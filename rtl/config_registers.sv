`timescale 1ns/1ps

module config_registers #(
    parameter ADDR_WIDTH = 5,
    parameter DATA_WIDTH = 32
)(
    input  logic                  clk,
    input  logic                  reset,

    // AXI Register Interface
    input  logic [ADDR_WIDTH-1:0]  reg_addr,
    input  logic                   reg_write,
    input  logic [DATA_WIDTH-1:0]  reg_wdata,
    input  logic                   reg_read,
    input  logic [DATA_WIDTH/8-1:0] reg_wstrb, // Write strobe byte-wise mask
    output logic [DATA_WIDTH-1:0]  reg_rdata,
    output logic                   reg_ready,

    // Configurable Parameters
    output logic [DATA_WIDTH-1:0]  cfg_enable,
    output logic [DATA_WIDTH-1:0]  cfg_mode,
    output logic [DATA_WIDTH-1:0]  cfg_threshold,
    output logic [DATA_WIDTH-1:0]  cfg_status
);

    localparam NUM_REGS = 32;
    localparam REG_ENABLE    = 0;
    localparam REG_MODE      = 1;
    localparam REG_THRESHOLD = 2;
    localparam REG_STATUS    = 3;

    logic [DATA_WIDTH-1:0] registers [0:NUM_REGS-1];
    logic reg_ready_d;

    // Reset Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            registers[REG_ENABLE]    <= 32'b0;
            registers[REG_MODE]      <= 32'b0;
            registers[REG_THRESHOLD] <= 32'd10;
            registers[REG_STATUS]    <= 32'b0;
            for (int i = 4; i < NUM_REGS; i++) begin
                registers[i] <= 32'b0;
            end
            reg_ready <= 0;
        end else begin
            reg_ready <= reg_ready_d;

            if (reg_write && reg_addr < NUM_REGS) begin
                for (int i = 0; i < 4; i++) begin
                    if (reg_wstrb[i]) begin
                        registers[reg_addr][8*i +: 8] <= reg_wdata[8*i +: 8];
                    end
                end
            end
        end
    end

    // Read Operation
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            reg_rdata <= 32'b0;
        end else if (reg_read && reg_addr < NUM_REGS) begin
            reg_rdata <= registers[reg_addr];
        end
    end

    // Register Access Response Pulse (1-cycle)
    always_comb begin
        reg_ready_d = (reg_write || reg_read) ? 1'b1 : 1'b0;
    end

    // Hook: On cfg_enable change (optional trigger placeholder)
    always_ff @(posedge clk) begin
        if (!reset && reg_write && reg_addr == REG_ENABLE) begin
            // Could trigger FSM start, interrupt, etc.
        end
    end

    // Assign Outputs
    assign cfg_enable    = registers[REG_ENABLE];
    assign cfg_mode      = registers[REG_MODE];
    assign cfg_threshold = registers[REG_THRESHOLD];
    assign cfg_status    = registers[REG_STATUS];

endmodule
