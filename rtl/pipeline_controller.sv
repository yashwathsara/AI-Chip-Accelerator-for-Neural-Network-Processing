`timescale 1ns / 1ps

module pipeline_controller #(
    parameter int DATA_WIDTH    = 32,
    parameter int NUM_STAGES    = 4,
    parameter int TIMEOUT_CYCLES = 10
)(
    input  logic                     clk,
    input  logic                     reset,
    input  logic                     in_valid,
    input  logic [DATA_WIDTH-1:0]    in_data,
    output logic                     in_ready,
    output logic                     out_valid,
    output logic [DATA_WIDTH-1:0]    out_data,
    input  logic                     out_ready,
    output logic                     error
);

    initial begin
        if (DATA_WIDTH <= 0)
            $fatal("DATA_WIDTH must be greater than 0");
        if (NUM_STAGES <= 0)
            $fatal("NUM_STAGES must be greater than 0");
        if (TIMEOUT_CYCLES <= 0)
            $fatal("TIMEOUT_CYCLES must be greater than 0");
    end

    logic [NUM_STAGES-1:0] stage_valid;
    logic [NUM_STAGES-1:0][DATA_WIDTH-1:0] stage_data;
    logic [$clog2(TIMEOUT_CYCLES+1)-1:0] timeout_counter [NUM_STAGES-1:0];

    assign in_ready = ~stage_valid[0];
    assign out_valid = stage_valid[NUM_STAGES-1];
    assign out_data  = stage_data[NUM_STAGES-1];

    logic [NUM_STAGES-1:0] stage_timeout;
    genvar j;
    generate
        for (j = 0; j < NUM_STAGES; j = j + 1) begin
            assign stage_timeout[j] = (timeout_counter[j] >= TIMEOUT_CYCLES);
        end
    endgenerate
    assign error = |stage_timeout;

    always_ff @(posedge clk) begin
        if (reset) begin
            stage_valid       <= '0;
            stage_data        <= '{default: '0};
            for (int i = 0; i < NUM_STAGES; i = i + 1) begin
                timeout_counter[i] <= '0;
            end
        end else begin
            if (in_valid && in_ready) begin
                stage_valid[0]     <= 1'b1;
                stage_data[0]      <= in_data;
                timeout_counter[0] <= '0;
            end else if (stage_valid[0]) begin
                if (timeout_counter[0] < TIMEOUT_CYCLES)
                    timeout_counter[0] <= timeout_counter[0] + 1;
            end

            for (int i = 1; i < NUM_STAGES; i = i + 1) begin
                if (stage_valid[i-1] && ((i == NUM_STAGES-1 && out_ready) || (i < NUM_STAGES-1 && ~stage_valid[i]))) begin
                    stage_valid[i]     <= stage_valid[i-1];
                    stage_data[i]      <= stage_data[i-1];
                    timeout_counter[i] <= '0;
                    stage_valid[i-1]   <= 1'b0;
                end else if (stage_valid[i]) begin
                    if (timeout_counter[i] < TIMEOUT_CYCLES)
                        timeout_counter[i] <= timeout_counter[i] + 1;
                end
            end
        end
    end

endmodule