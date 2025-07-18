`timescale 1ns/1ps

module tb_performance_monitor;

    parameter COUNTER_WIDTH = 32;

    logic clk, reset, busy;
    logic [COUNTER_WIDTH-1:0] total_cycles;
    logic [COUNTER_WIDTH-1:0] busy_cycles;
    logic [COUNTER_WIDTH-1:0] idle_cycles;
    logic [COUNTER_WIDTH-1:0] utilization;

    // Instantiate DUT
    performance_monitor #(
        .COUNTER_WIDTH(COUNTER_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .busy(busy),
        .total_cycles(total_cycles),
        .busy_cycles(busy_cycles),
        .idle_cycles(idle_cycles),
        .utilization(utilization)
    );

    // Clock generator
    always #5 clk = ~clk;

    // Test logic
    initial begin
        $display("==== Starting performance_monitor test ====");
        clk = 0;
        reset = 1;
        busy = 0;
        #20;
        reset = 0;

        // Simulate activity: toggle busy for 100 cycles
        repeat (50) begin
            busy = 1;
            #10;
            busy = 0;
            #10;
        end

        // Hold idle
        busy = 0;
        #50;

        $display("Total cycles:     %0d", total_cycles);
        $display("Busy cycles:      %0d", busy_cycles);
        $display("Idle cycles:      %0d", idle_cycles);
        $display("Utilization:      %0d%%", utilization);

        // Simple assertions
        if (total_cycles != 150) $fatal("Total cycles mismatch!");
        if (busy_cycles != 50) $fatal("Busy cycles mismatch!");
        if (idle_cycles != 100) $fatal("Idle cycles mismatch!");
        if (utilization != 33) $fatal("Utilization should be ~33%%");

        $display("Test passed! ✅");
        $finish;
    end

endmodule

