`timescale 1ns/1ps

module fc_layer #(
    parameter INPUT_SIZE  = 128,
    parameter OUTPUT_SIZE = 64,
    parameter DATA_WIDTH  = 8
)(
    input  logic                          clk,
    input  logic                          reset,

    // Control Signals
    input  logic                          start,
    output logic                          done,

    // Flattened Data Inputs
    input  logic signed [INPUT_SIZE*DATA_WIDTH-1:0]  input_data_flat,
    input  logic signed [OUTPUT_SIZE*INPUT_SIZE*DATA_WIDTH-1:0] weights_flat,
    input  logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0]            bias_flat,

    // Flattened Output Data
    output logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0] output_data_flat
);

    logic signed [DATA_WIDTH-1:0] input_data     [INPUT_SIZE];
    logic signed [DATA_WIDTH-1:0] weights        [OUTPUT_SIZE][INPUT_SIZE];
    logic signed [DATA_WIDTH-1:0] bias           [OUTPUT_SIZE];
    logic signed [DATA_WIDTH-1:0] output_data    [OUTPUT_SIZE];

    logic [$clog2(INPUT_SIZE)-1:0] counter;
    logic computing;
    logic signed [2*DATA_WIDTH-1:0] acc [OUTPUT_SIZE];

    typedef enum logic [1:0] {
        IDLE      = 2'b00,
        COMPUTE   = 2'b01,
        COMPLETE  = 2'b10,
        WAIT_DONE = 2'b11
    } state_t;

    state_t state, next_state;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    always_comb begin
        case (state)
            IDLE:       next_state = start ? COMPUTE : IDLE;
            COMPUTE:    next_state = (counter == INPUT_SIZE-1) ? COMPLETE : COMPUTE;
            COMPLETE:   next_state = WAIT_DONE;
            WAIT_DONE:  next_state = start ? WAIT_DONE : IDLE;
            default:    next_state = IDLE;
        endcase
    end

    always_comb begin
        for (int i = 0; i < INPUT_SIZE; i++) begin
            input_data[i] = input_data_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH];
        end
        for (int i = 0; i < OUTPUT_SIZE; i++) begin
            bias[i] = bias_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH];
            for (int j = 0; j < INPUT_SIZE; j++) begin
                automatic int flat_index = i*INPUT_SIZE + j;
                weights[i][j] = weights_flat[(flat_index+1)*DATA_WIDTH-1 -: DATA_WIDTH];
            end
        end
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            counter    <= 0;
            done       <= 0;
            computing  <= 0;
            for (int i = 0; i < OUTPUT_SIZE; i++) begin
                acc[i] <= 0;
                output_data[i] <= 0;
            end
        end else begin
            case (state)
                IDLE: begin
                    counter   <= 0;
                    done      <= 0;
                    computing <= 0;
                    for (int i = 0; i < OUTPUT_SIZE; i++) begin
                        acc[i] <= bias[i];
                    end
                end
                COMPUTE: begin
                    for (int i = 0; i < OUTPUT_SIZE; i++) begin
                        acc[i] <= acc[i] + weights[i][counter] * input_data[counter];
                    end
                    counter <= counter + 1;
                end
                COMPLETE: begin
                    for (int i = 0; i < OUTPUT_SIZE; i++) begin
                        if (acc[i] > $signed(2**(DATA_WIDTH-1)-1))
                            output_data[i] <= $signed(2**(DATA_WIDTH-1)-1);
                        else if (acc[i] < $signed(-1 * 2**(DATA_WIDTH-1)))
                            output_data[i] <= $signed(-1 * 2**(DATA_WIDTH-1));
                        else
                            output_data[i] <= acc[i][DATA_WIDTH-1:0];
                    end
                    done <= 1;
                end
                WAIT_DONE: begin
                    done <= 0;
                end
            endcase
        end
    end

    always_comb begin
        for (int i = 0; i < OUTPUT_SIZE; i++) begin
            output_data_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH] = output_data[i];
        end
    end

endmodule
