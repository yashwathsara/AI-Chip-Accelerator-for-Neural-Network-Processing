`timescale 1ns / 1ps

module image_preprocessing #(
    parameter WIDTH       = 640,
    parameter HEIGHT      = 480,
    parameter DATA_WIDTH  = 8
)(
    input  wire                      clk,
    input  wire                      rst_n,
    input  wire                      enable,
    input  wire                      frame_start, // NEW input to reset min/max per frame

    // AXI-Stream input
    input  wire [3*DATA_WIDTH-1:0]   s_axis_tdata,  // {R, G, B}
    input  wire                      s_axis_tvalid,
    output wire                      s_axis_tready,

    // AXI-Stream output
    output wire [3*DATA_WIDTH-1:0]   m_axis_tdata,
    output wire                      m_axis_tvalid,
    input  wire                      m_axis_tready
);

    // Min/max tracking
    reg [DATA_WIDTH-1:0] min_r, min_g, min_b;
    reg [DATA_WIDTH-1:0] max_r, max_g, max_b;

    wire input_fire = s_axis_tvalid && s_axis_tready;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n || frame_start) begin
            min_r <= 8'hFF; max_r <= 8'h00;
            min_g <= 8'hFF; max_g <= 8'h00;
            min_b <= 8'hFF; max_b <= 8'h00;
        end else if (enable && input_fire) begin
            if (s_axis_tdata[23:16] < min_r) min_r <= s_axis_tdata[23:16];
            if (s_axis_tdata[15:8]  < min_g) min_g <= s_axis_tdata[15:8];
            if (s_axis_tdata[7:0]   < min_b) min_b <= s_axis_tdata[7:0];

            if (s_axis_tdata[23:16] > max_r) max_r <= s_axis_tdata[23:16];
            if (s_axis_tdata[15:8]  > max_g) max_g <= s_axis_tdata[15:8];
            if (s_axis_tdata[7:0]   > max_b) max_b <= s_axis_tdata[7:0];
        end
    end

    // Normalization
    wire [15:0] diff_r = {8'b0, max_r} - {8'b0, min_r};
    wire [15:0] diff_g = {8'b0, max_g} - {8'b0, min_g};
    wire [15:0] diff_b = {8'b0, max_b} - {8'b0, min_b};

    wire [15:0] norm_r_ext = (diff_r != 0) ? (({8'b0, s_axis_tdata[23:16]} - {8'b0, min_r}) << 8) / diff_r : {8'b0, s_axis_tdata[23:16]};
    wire [15:0] norm_g_ext = (diff_g != 0) ? (({8'b0, s_axis_tdata[15:8]}  - {8'b0, min_g}) << 8) / diff_g : {8'b0, s_axis_tdata[15:8]};
    wire [15:0] norm_b_ext = (diff_b != 0) ? (({8'b0, s_axis_tdata[7:0]}   - {8'b0, min_b}) << 8) / diff_b : {8'b0, s_axis_tdata[7:0]};

    wire [7:0] norm_r = norm_r_ext[15:8];
    wire [7:0] norm_g = norm_g_ext[15:8];
    wire [7:0] norm_b = norm_b_ext[15:8];

    // Output pipeline
    reg [23:0] norm_data_reg;
    reg        valid_reg;

    wire output_fire = m_axis_tready && m_axis_tvalid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            norm_data_reg <= 24'd0;
            valid_reg     <= 1'b0;
        end else if (enable && input_fire) begin
            norm_data_reg <= {norm_r, norm_g, norm_b};
            valid_reg     <= 1'b1;
        end else if (output_fire) begin
            valid_reg     <= 1'b0;
        end
    end

    assign m_axis_tdata  = norm_data_reg;
    assign m_axis_tvalid = valid_reg;
    assign s_axis_tready = (!valid_reg || m_axis_tready) && enable;

endmodule
