`timescale 1ns/1ps


module memory_controller #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16
)(
    input  logic                     clk,
    input  logic                     reset,

    // Memory Interface
    input  logic                     mem_read,
    input  logic                     mem_write,
    input  logic [ADDR_WIDTH-1:0]     mem_addr,
    input  logic [DATA_WIDTH-1:0]     mem_wdata,
    output logic [DATA_WIDTH-1:0]     mem_rdata,
    output logic                      mem_ready,

    // External Memory Interface
    output logic [ADDR_WIDTH-1:0]     ext_mem_addr,
    output logic                      ext_mem_read,
    output logic                      ext_mem_write,
    output logic [DATA_WIDTH-1:0]     ext_mem_wdata,
    input  logic [DATA_WIDTH-1:0]     ext_mem_rdata,
    input  logic                      ext_mem_ready
);

    // FSM States
    typedef enum logic [1:0] {
        IDLE    = 2'b00,
        READ    = 2'b01,
        WRITE   = 2'b10,
        WAIT    = 2'b11
    } state_t;

    state_t state, next_state;

    // Registers
    logic [DATA_WIDTH-1:0] rdata_reg;
    logic mem_read_active; // Track active read requests

    // FSM: State Register
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            mem_read_active <= 0;
        end else begin
            state <= next_state;
            if (state == READ) mem_read_active <= 1; // Latch read request
            else if (state == WAIT && ext_mem_ready) mem_read_active <= 0;
        end
    end

    // FSM: Next-State Logic
    always_comb begin
        next_state = state;
        case (state)
            IDLE: begin
                if (mem_read) next_state = READ;
                else if (mem_write) next_state = WRITE;
            end
            READ, WRITE: begin
                if (ext_mem_ready) next_state = WAIT;
            end
            WAIT: begin
                next_state = IDLE;
            end
        endcase
    end

    // FSM: Output Logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ext_mem_addr  <= 0;
            ext_mem_read  <= 0;
            ext_mem_write <= 0;
            ext_mem_wdata <= 0;
            mem_ready     <= 0;
            mem_rdata     <= 0;
        end else begin
            case (state)
                IDLE: begin
                    ext_mem_read  <= 0;
                    ext_mem_write <= 0;
                    mem_ready     <= 0;
                end
                READ: begin
                    ext_mem_addr  <= mem_addr;
                    ext_mem_read  <= 1;
                    ext_mem_write <= 0;
                end
                WRITE: begin
                    ext_mem_addr  <= mem_addr;
                    ext_mem_wdata <= mem_wdata;
                    ext_mem_read  <= 0;
                    ext_mem_write <= 1;
                end
                WAIT: begin
                    if (ext_mem_ready) begin
                        if (mem_read_active) begin
                            rdata_reg <= ext_mem_rdata; // Capture read data safely
                        end
                        mem_ready <= 1; // Indicate operation is complete
                    end
                end
            endcase
        end
    end

    // Assign Read Data when Ready
    always_ff @(posedge clk) begin
        if (state == WAIT && mem_read_active) begin
            mem_rdata <= rdata_reg;
        end
    end

endmodule
