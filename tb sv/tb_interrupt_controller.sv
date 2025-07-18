
`timescale 1ns / 1ps

module tb_interrupt_controller;
    parameter int NUM_INTERRUPTS = 8;
    parameter int DATA_WIDTH = 32;

    logic clk = 0;
    logic reset;

    logic [NUM_INTERRUPTS-1:0] irq_in;
    logic s_axi_awvalid;
    logic [DATA_WIDTH-1:0] s_axi_awaddr;
    logic s_axi_wvalid;
    logic [DATA_WIDTH-1:0] s_axi_wdata;
    logic [DATA_WIDTH/8-1:0] s_axi_wstrb;
    logic s_axi_bready;
    logic s_axi_arvalid;
    logic [DATA_WIDTH-1:0] s_axi_araddr;
    logic s_axi_rready;

    wire s_axi_awready, s_axi_wready, s_axi_bvalid;
    wire [1:0] s_axi_bresp;
    wire s_axi_arready, s_axi_rvalid;
    wire [DATA_WIDTH-1:0] s_axi_rdata;
    wire [1:0] s_axi_rresp;
    wire interrupt;
    wire [$clog2(NUM_INTERRUPTS)-1:0] interrupt_vector;

    interrupt_controller #(
        .NUM_INTERRUPTS(NUM_INTERRUPTS),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .irq_in(irq_in),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rresp(s_axi_rresp),
        .interrupt(interrupt),
        .interrupt_vector(interrupt_vector)
    );

    always #5 clk = ~clk;

    initial begin
        reset = 1;
        irq_in = 0;
        s_axi_awvalid = 0;
        s_axi_wvalid = 0;
        s_axi_arvalid = 0;
        s_axi_bready = 1;
        s_axi_rready = 1;
        s_axi_wstrb = 4'b1111;

        #20 reset = 0;

        // Enable IRQ[0]
        s_axi_awaddr = 32'h4;
        s_axi_awvalid = 1;
        s_axi_wdata = 32'h00000001;
        s_axi_wvalid = 1;
        #10;
        s_axi_awvalid = 0;
        s_axi_wvalid = 0;

        // Pulse irq_in[0]
        #10;
        irq_in[0] = 1;
        #10;
        irq_in[0] = 0;

        // Clear IRQ[0]
        #20;
        s_axi_awaddr = 32'h8;
        s_axi_awvalid = 1;
        s_axi_wdata = 32'h00000001;
        s_axi_wvalid = 1;
        #10;
        s_axi_awvalid = 0;
        s_axi_wvalid = 0;

        #50 $finish;
    end
endmodule
