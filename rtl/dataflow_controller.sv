`timescale 1ns/1ps


module dataflow_controller #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32
)(
    input  logic                     clk,
    input  logic                     reset,

    // Control Signals
    input  logic                     start_process,
    output logic                     process_done,

    // AXI Configuration Interface
    input  logic [ADDR_WIDTH-1:0]    cfg_addr, 
    input  logic                     cfg_write,
    input  logic [DATA_WIDTH-1:0]    cfg_wdata,
    input  logic                     cfg_read,
    output logic [DATA_WIDTH-1:0]    cfg_rdata,
    output logic                     cfg_ready,

    // Data Movement Control
    output logic                     load_data,
    output logic                     compute_enable,
    output logic                     store_result,

    // Status Signals
    input  logic                     data_ready,
    input  logic                     compute_done,
    input  logic                     store_complete
);

    // Internal State Machine
    typedef enum logic [1:0] {
        IDLE       = 2'b00,
        LOAD       = 2'b01,
        COMPUTE    = 2'b10,
        STORE      = 2'b11
    } state_t;

    state_t state, next_state;

    // State Transition Logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Next State Logic
    always_comb begin
        case (state)
            IDLE:       next_state = start_process ? LOAD : IDLE;
            LOAD:       next_state = data_ready ? COMPUTE : LOAD;
            COMPUTE:    next_state = compute_done ? STORE : COMPUTE;
            STORE:      next_state = store_complete ? IDLE : STORE;
            default:    next_state = IDLE;
        endcase
    end

    // Output Logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            load_data      <= 0;
            compute_enable <= 0;
            store_result   <= 0;
            process_done   <= 0;
        end else begin
            case (state)
                IDLE: begin
                    load_data      <= 0;
                    compute_enable <= 0;
                    store_result   <= 0;
                    process_done   <= 0;
                end
                LOAD: begin
                    load_data      <= 1;
                    compute_enable <= 0;
                    store_result   <= 0;
                end
                COMPUTE: begin
                    load_data      <= 0;
                    compute_enable <= 1;
                    store_result   <= 0;
                end
                STORE: begin
                    load_data      <= 0;
                    compute_enable <= 0;
                    store_result   <= 1;
                end
            endcase

            // Process Done Latch (Avoid glitches)
            if (store_complete)
                process_done <= 1;
            else if (start_process)  // Reset when new process starts
                process_done <= 0;
        end
    end

    // Configuration Register Handling
    logic [DATA_WIDTH-1:0] config_reg;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            config_reg <= 0;
            cfg_ready  <= 0;
            cfg_rdata  <= 0;  // Prevent stale data
        end else begin
            if (cfg_write) begin
                config_reg <= cfg_wdata;
                cfg_ready  <= 1;
            end else if (cfg_read) begin
                cfg_rdata  <= config_reg;
                cfg_ready  <= 1;
            end else begin
                cfg_ready  <= 0;
                cfg_rdata  <= 0;  // Ensure clean data output
            end
        end
    end

endmodule
