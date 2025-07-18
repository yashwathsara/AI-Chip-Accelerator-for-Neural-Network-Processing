`timescale 1ns / 1ps

module convolution_engine #(
    parameter int DATA_WIDTH   = 8,
    parameter int MAX_KERNEL   = 5,
    parameter int MAX_CHANNELS = 3,
    parameter int IMAGE_SIZE   = 64
)(
    input  logic clk,
    input  logic reset,
    input  logic s_axis_tvalid,
    input  logic s_axis_tready, // Changed to input
    output logic s_axis_tready_internal, // New output for internal readiness
    input  logic [MAX_CHANNELS-1:0][DATA_WIDTH-1:0] s_axis_tdata,
    input  logic s_axis_tlast,
    input  logic s_kernel_tvalid,
    output logic s_kernel_tready,
    input  logic [MAX_CHANNELS-1:0][MAX_KERNEL*MAX_KERNEL-1:0][DATA_WIDTH-1:0] s_kernel_tdata,
    input  logic [3:0] kernel_size,
    input  logic [3:0] num_channels,
    input  logic [3:0] stride,
    input  logic [3:0] padding,
    output logic m_axis_tvalid,
    input  logic m_axis_tready,
    output logic [DATA_WIDTH-1:0] m_axis_tdata,
    output logic m_axis_tlast
);

    logic [7:0] output_size;
    always_comb begin
        output_size = (IMAGE_SIZE + (padding << 1) - kernel_size) / stride + 1;
    end

    (* ram_style = "block" *)
    logic [DATA_WIDTH-1:0] padded_image[MAX_CHANNELS][IMAGE_SIZE+2*MAX_KERNEL-1:0][IMAGE_SIZE+2*MAX_KERNEL-1:0];
    (* ram_style = "block" *)
    logic [DATA_WIDTH-1:0] kernel[MAX_CHANNELS][MAX_KERNEL*MAX_KERNEL-1:0];

    logic [DATA_WIDTH-1:0] sum;
    logic [7:0] input_row, input_col;
    logic [7:0] out_row, out_col;
    logic [15:0] pixel_count;
    logic kernel_loaded;

    typedef enum logic [2:0] {IDLE, LOAD_KERNEL, LOAD_INPUT, PROCESS, OUTPUT} state_t;
    state_t state;

    assign s_axis_tready_internal = (state == LOAD_INPUT); // Indicate internal readiness
    assign s_kernel_tready = (state == LOAD_KERNEL);
    assign m_axis_tvalid   = (state == OUTPUT);
    assign m_axis_tdata    = sum;
    assign m_axis_tlast    = (state == OUTPUT && out_row == output_size - 1 && out_col == output_size - 1);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state         <= IDLE;
            kernel_loaded <= 0;
            pixel_count   <= 0;
            input_row     <= 0;
            input_col     <= 0;
            out_row       <= 0;
            out_col       <= 0;
            sum           <= 0;
            for (int ch = 0; ch < MAX_CHANNELS; ch++) begin
                for (int i = 0; i < IMAGE_SIZE + 2*MAX_KERNEL; i++) begin
                    for (int j = 0; j < IMAGE_SIZE + 2*MAX_KERNEL; j++) begin
                        padded_image[ch][i][j] <= 0;
                    end
                end
                for (int i = 0; i < MAX_KERNEL * MAX_KERNEL; i++) begin
                    kernel[ch][i] <= 0;
                end
            end
        end else begin
            case (state)
                IDLE: begin
                    if (s_kernel_tvalid)
                        state <= LOAD_KERNEL;
                end

                LOAD_KERNEL: begin
                    if (s_kernel_tvalid) begin
                        for (int ch = 0; ch < MAX_CHANNELS; ch++) begin
                            for (int i = 0; i < MAX_KERNEL * MAX_KERNEL; i++) begin
                                if (ch < num_channels && i < kernel_size * kernel_size) begin
                                    kernel[ch][i] <= s_kernel_tdata[ch][i];
                                end
                            end
                        end
                        kernel_loaded <= 1;
                        state <= LOAD_INPUT;
                    end
                end

                LOAD_INPUT: begin
                    if (s_axis_tvalid && s_axis_tready) begin // Use external s_axis_tready
                        for (int ch = 0; ch < MAX_CHANNELS; ch++) begin
                            if (ch < num_channels) begin
                                padded_image[ch][padding + input_row][padding + input_col] <= s_axis_tdata[ch];
                            end
                        end
                        pixel_count <= pixel_count + 1;
                        if (input_col == IMAGE_SIZE - 1) begin
                            input_col <= 0;
                            if (input_row == IMAGE_SIZE - 1)
                                input_row <= 0;
                            else
                                input_row <= input_row + 1;
                        end else begin
                            input_col <= input_col + 1;
                        end
                        if (pixel_count == IMAGE_SIZE * IMAGE_SIZE - 1 || s_axis_tlast)
                            state <= PROCESS;
                    end
                end

                PROCESS: begin
                    automatic logic [DATA_WIDTH-1:0] temp_sum = 0;
                    for (int ch = 0; ch < MAX_CHANNELS; ch++) begin
                        if (ch < num_channels) begin
                            for (int i = 0; i < MAX_KERNEL; i++) begin
                                for (int j = 0; j < MAX_KERNEL; j++) begin
                                    if (i < kernel_size && j < kernel_size) begin
                                        automatic int img_r = out_row * stride + i;
                                        automatic int img_c = out_col * stride + j;
                                        automatic int k_idx = i * kernel_size + j;
                                        if (img_r < IMAGE_SIZE + 2 * padding &&
                                            img_c < IMAGE_SIZE + 2 * padding &&
                                            k_idx < MAX_KERNEL * MAX_KERNEL) begin
                                            temp_sum += padded_image[ch][img_r][img_c] * kernel[ch][k_idx];
                                        end
                                    end
                                end
                            end
                        end
                    end
                    sum   <= temp_sum;
                    state <= OUTPUT;
                end

                OUTPUT: begin
                    if (m_axis_tready) begin
                        if (out_col < output_size - 1) begin
                            out_col <= out_col + 1;
                            state   <= PROCESS;
                        end else if (out_row < output_size - 1) begin
                            out_col <= 0;
                            out_row <= out_row + 1;
                            state   <= PROCESS;
                        end else begin
                            state         <= IDLE;
                            kernel_loaded <= 0;
                            pixel_count   <= 0;
                            input_row     <= 0;
                            input_col     <= 0;
                            out_row       <= 0;
                            out_col       <= 0;
                        end
                    end
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule