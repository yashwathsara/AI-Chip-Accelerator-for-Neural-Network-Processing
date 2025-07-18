// power_debug_hooks.sv
// Contains reusable power gating control and debug mux logic

`timescale 1ns/1ps

module power_debug_hooks #(
    parameter DATA_WIDTH = 8
)(
    input  logic                  clk,
    input  logic                  reset,

    // Power gating control
    input  logic                  power_en_conv,
    input  logic                  power_en_pool,
    input  logic                  power_en_fc,

    // Debug control
    input  logic                  debug_enable,
    input  logic [1:0]            debug_mux_sel,

    input  logic [DATA_WIDTH-1:0] conv_out,
    input  logic [DATA_WIDTH-1:0] act_out,
    input  logic [DATA_WIDTH-1:0] pool_out,
    input  logic [DATA_WIDTH-1:0] fc_out,

    output logic [DATA_WIDTH-1:0] debug_data_out
);

    // Debug Mux Logic
    always_comb begin
        if (debug_enable) begin
            case (debug_mux_sel)
                2'b00: debug_data_out = conv_out;
                2'b01: debug_data_out = act_out;
                2'b10: debug_data_out = pool_out;
                2'b11: debug_data_out = fc_out;
                default: debug_data_out = '0;
            endcase
        end else begin
            debug_data_out = '0;
        end
    end

endmodule

