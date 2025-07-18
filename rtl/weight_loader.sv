`timescale 1ns / 1ps

module weight_loader #(
    parameter int DATA_WIDTH  = 8,
    parameter int MAX_WEIGHTS = 1024
)(
    input  logic                   clk,
    input  logic                   reset,
    input  logic                   cfg_valid,
    input  logic [7:0]             cfg_addr,
    input  logic [15:0]            cfg_length,
    output logic                   weight_tvalid,
    input  logic                   weight_tready,
    output logic [DATA_WIDTH-1:0]  weight_tdata,
    output logic [DATA_WIDTH-1:0]  weight_mem [0:MAX_WEIGHTS-1],
    output logic [15:0]            weights_loaded,
    output logic                   error
);

    typedef enum logic [1:0] {
        WL_IDLE,
        WL_LOAD,
        WL_DONE
    } state_t;
    state_t state;

    logic [15:0] weight_counter;
    logic [7:0] cfg_addr_reg;
    logic [15:0] cfg_length_reg;

    // Address overflow detection
    logic addr_error;
    assign addr_error = (cfg_addr_reg + cfg_length_reg > MAX_WEIGHTS);

    // Drive AXI-Stream signals
    assign weight_tvalid = (state == WL_LOAD) && (weight_counter < cfg_addr_reg + cfg_length_reg);
    assign weight_tdata = weight_mem[weight_counter];
    assign weights_loaded = weight_counter - cfg_addr_reg;

    (* ram_style = "block" *)
    logic [DATA_WIDTH-1:0] weight_mem [0:MAX_WEIGHTS-1];

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state           <= WL_IDLE;
            weight_counter  <= 0;
            error           <= 0;
            cfg_addr_reg    <= 0;
            cfg_length_reg  <= 0;
            for (int i = 0; i < MAX_WEIGHTS; i++) begin
                weight_mem[i] <= 0;
            end
        end else begin
            case (state)
                WL_IDLE: begin
                    if (cfg_valid) begin
                        cfg_addr_reg   <= cfg_addr;
                        cfg_length_reg <= cfg_length;
                        if (cfg_addr + cfg_length > MAX_WEIGHTS) begin
                            error <= 1;
                            state <= WL_IDLE;
                        end else begin
                            weight_counter <= cfg_addr;
                            error <= 0;
                            state <= WL_LOAD;
                        end
                    end
                end

                WL_LOAD: begin
                    if (weight_tvalid && weight_tready) begin
                        weight_counter <= weight_counter + 1;
                        if (weight_counter == cfg_addr_reg + cfg_length_reg - 1) begin
                            state <= WL_DONE;
                        end
                    end
                end

                WL_DONE: begin
                    if (cfg_valid) begin
                        cfg_addr_reg   <= cfg_addr;
                        cfg_length_reg <= cfg_length;
                        if (cfg_addr + cfg_length > MAX_WEIGHTS) begin
                            error <= 1;
                            state <= WL_IDLE;
                        end else begin
                            weight_counter <= cfg_addr;
                            error <= 0;
                            state <= WL_LOAD;
                        end
                    end
                end

                default: begin
                    state <= WL_IDLE;
                    weight_counter <= 0;
                    error <= 0;
                    cfg_addr_reg <= 0;
                    cfg_length_reg <= 0;
                end
            endcase
        end
    end

endmodule