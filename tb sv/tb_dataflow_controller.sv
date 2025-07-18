
`timescale 1ns/1ps

module tb_dataflow_controller;

    parameter ADDR_WIDTH = 32;
    parameter DATA_WIDTH = 32;

    logic clk, reset;
    logic start_process;
    logic process_done;
    logic [ADDR_WIDTH-1:0] cfg_addr;
    logic cfg_write, cfg_read;
    logic [DATA_WIDTH-1:0] cfg_wdata;
    logic [DATA_WIDTH-1:0] cfg_rdata;
    logic cfg_ready;
    logic load_data, compute_enable, store_result;
    logic data_ready, compute_done, store_complete;

    dataflow_controller dut (
        .clk(clk),
        .reset(reset),
        .start_process(start_process),
        .process_done(process_done),
        .cfg_addr(cfg_addr),
        .cfg_write(cfg_write),
        .cfg_read(cfg_read),
        .cfg_wdata(cfg_wdata),
        .cfg_rdata(cfg_rdata),
        .cfg_ready(cfg_ready),
        .load_data(load_data),
        .compute_enable(compute_enable),
        .store_result(store_result),
        .data_ready(data_ready),
        .compute_done(compute_done),
        .store_complete(store_complete)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    task reset_dut();
    begin
        reset = 1;
        start_process = 0;
        cfg_write = 0;
        cfg_read = 0;
        data_ready = 0;
        compute_done = 0;
        store_complete = 0;
        #20;
        reset = 0;
    end
    endtask

    initial begin
        reset_dut();
        @(posedge clk);

        // Write config register
        cfg_write = 1;
        cfg_wdata = 32'hA5A5A5A5;
        @(posedge clk);
        cfg_write = 0;
        @(posedge clk);

        // Read config register
        cfg_read = 1;
        @(posedge clk);
        cfg_read = 0;
        @(posedge clk);

        // Start process and simulate handshakes
        start_process = 1;
        @(posedge clk);
        start_process = 0;

        // Simulate LOAD phase
        data_ready = 1;
        @(posedge clk);
        data_ready = 0;

        // Simulate COMPUTE phase
        compute_done = 1;
        @(posedge clk);
        compute_done = 0;

        // Simulate STORE phase
        store_complete = 1;
        @(posedge clk);
        store_complete = 0;

        @(posedge clk);
        $display("process_done: %b", process_done);
        $finish;
    end

endmodule
