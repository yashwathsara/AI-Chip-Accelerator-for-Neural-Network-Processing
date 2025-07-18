`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Performance Monitor Module
//------------------------------------------------------------------------------
// This module monitors the total number of clock cycles and the number of cycles
// during which a given 'busy' signal is asserted. It provides counters for total
// cycles, busy cycles, and idle cycles. Additionally, it computes a utilization
// percentage based on the busy and total cycles.
// 
// Parameters:
//   COUNTER_WIDTH: Bit width of the counters (e.g., 32 bits)
//------------------------------------------------------------------------------
module performance_monitor #(
    parameter int COUNTER_WIDTH = 32
)(
    input  logic clk,        // System clock
    input  logic reset,      // Synchronous reset (active high)
    input  logic busy,       // Busy signal (asserted when the monitored module is active)
    
    output logic [COUNTER_WIDTH-1:0] total_cycles,  // Total cycles elapsed
    output logic [COUNTER_WIDTH-1:0] busy_cycles,     // Number of cycles busy was asserted
    output logic [COUNTER_WIDTH-1:0] idle_cycles,     // Calculated idle cycles (total - busy)
    output logic [COUNTER_WIDTH-1:0] utilization    // Utilization percentage (0 to 100)
);

    // Total cycles counter: increments on every clock cycle.
    always_ff @(posedge clk) begin
        if (reset)
            total_cycles <= '0;
        else
            total_cycles <= total_cycles + 1;
    end

    // Busy cycles counter: increments when the 'busy' signal is high.
    always_ff @(posedge clk) begin
        if (reset)
            busy_cycles <= '0;
        else if (busy)
            busy_cycles <= busy_cycles + 1;
    end

    // Idle cycles counter: calculated as the difference between total_cycles and busy_cycles.
    always_ff @(posedge clk) begin
        if (reset)
            idle_cycles <= '0;
        else
            idle_cycles <= total_cycles - busy_cycles;
    end

    // Utilization calculation: computes (busy_cycles / total_cycles) * 100.
    // Note: To avoid division by zero, we check that total_cycles > 0.
    always_ff @(posedge clk) begin
        if (reset)
            utilization <= '0;
        else if (total_cycles != 0)
            utilization <= (busy_cycles * 100) / total_cycles;
        else
            utilization <= '0;
    end

    // Parameter validation: ensure COUNTER_WIDTH is a valid (non-zero) value.
    initial begin
        if (COUNTER_WIDTH <= 0)
            $fatal("COUNTER_WIDTH must be greater than 0");
    end

endmodule
