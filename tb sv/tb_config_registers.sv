
`timescale 1ns/1ps

module tb_config_registers;

    parameter ADDR_WIDTH = 5;
    parameter DATA_WIDTH = 32;

    logic clk, reset;
    logic [ADDR_WIDTH-1:0] reg_addr;
    logic reg_write, reg_read;
    logic [DATA_WIDTH-1:0] reg_wdata;
    logic [DATA_WIDTH/8-1:0] reg_wstrb;
    logic [DATA_WIDTH-1:0] reg_rdata;
    logic reg_ready;

    logic [DATA_WIDTH-1:0] cfg_enable, cfg_mode, cfg_threshold, cfg_status;

    config_registers dut (
        .clk(clk),
        .reset(reset),
        .reg_addr(reg_addr),
        .reg_write(reg_write),
        .reg_wdata(reg_wdata),
        .reg_read(reg_read),
        .reg_wstrb(reg_wstrb),
        .reg_rdata(reg_rdata),
        .reg_ready(reg_ready),
        .cfg_enable(cfg_enable),
        .cfg_mode(cfg_mode),
        .cfg_threshold(cfg_threshold),
        .cfg_status(cfg_status)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    task reset_dut();
    begin
        reset = 1;
        reg_write = 0;
        reg_read = 0;
        reg_addr = 0;
        reg_wdata = 0;
        reg_wstrb = 4'hF;
        #20;
        reset = 0;
    end
    endtask

    initial begin
        reset_dut();
        @(posedge clk);

        // Write to cfg_enable (register 0)
        reg_addr = 0;
        reg_wdata = 32'hABCD1234;
        reg_write = 1;
        reg_read = 0;
        @(posedge clk);
        reg_write = 0;

        // Read from cfg_enable
        reg_read = 1;
        @(posedge clk);
        reg_read = 0;
        @(posedge clk);

        $display("Read cfg_enable: %h", reg_rdata);
        $finish;
    end

endmodule
