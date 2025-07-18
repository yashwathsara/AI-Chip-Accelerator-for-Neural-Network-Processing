// clock_gating_unit.sv
// Generates gated clock outputs for low-power operation

`timescale 1ns/1ps

module clock_gating_unit (
    input  logic clk,
    input  logic reset,
    input  logic en_conv,
    input  logic en_pool,
    input  logic en_fc,

    output logic clk_conv,
    output logic clk_pool,
    output logic clk_fc
);

    logic latch_conv, latch_pool, latch_fc;

    // Latch enables on rising edge
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            latch_conv <= 1'b0;
            latch_pool <= 1'b0;
            latch_fc   <= 1'b0;
        end else begin
            latch_conv <= en_conv;
            latch_pool <= en_pool;
            latch_fc   <= en_fc;
        end
    end

    // Gated clocks
    assign clk_conv = clk & latch_conv;
    assign clk_pool = clk & latch_pool;
    assign clk_fc   = clk & latch_fc;

endmodule

