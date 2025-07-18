`timescale 1ns/1ps

module tb_axi_dma;

    parameter DATA_WIDTH = 32;
    parameter ADDR_WIDTH = 32;

    logic clk, reset;

    // AXI-Lite
    logic                     s_axi_awvalid;
    logic                     s_axi_awready;
    logic [ADDR_WIDTH-1:0]    s_axi_awaddr;
    logic                     s_axi_wvalid;
    logic                     s_axi_wready;
    logic [DATA_WIDTH-1:0]    s_axi_wdata;
    logic                     s_axi_bready;
    logic                     s_axi_bvalid;
    logic [1:0]               s_axi_bresp;

    logic                     s_axi_arvalid;
    logic                     s_axi_arready;
    logic [ADDR_WIDTH-1:0]    s_axi_araddr;
    logic                     s_axi_rready;
    logic                     s_axi_rvalid;
    logic [DATA_WIDTH-1:0]    s_axi_rdata;
    logic [1:0]               s_axi_rresp;

    // AXI-Stream
    logic                     s_axis_tvalid;
    logic                     s_axis_tready;
    logic [DATA_WIDTH-1:0]    s_axis_tdata;

    logic                     m_axis_tvalid;
    logic                     m_axis_tready;
    logic [DATA_WIDTH-1:0]    m_axis_tdata;

    // AXI-Master
    logic                     m_axi_arvalid;
    logic                     m_axi_arready;
    logic [ADDR_WIDTH-1:0]    m_axi_araddr;
    logic [7:0]               m_axi_arlen;
    logic                     m_axi_rvalid;
    logic                     m_axi_rready;
    logic [DATA_WIDTH-1:0]    m_axi_rdata;

    logic                     m_axi_awvalid;
    logic                     m_axi_awready;
    logic [ADDR_WIDTH-1:0]    m_axi_awaddr;
    logic [7:0]               m_axi_awlen;
    logic                     m_axi_wvalid;
    logic                     m_axi_wready;
    logic [DATA_WIDTH-1:0]    m_axi_wdata;

    // Clock Generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #20 reset = 0;

        // Write configuration registers
        s_axi_awvalid = 1;
        s_axi_wvalid = 1;
        s_axi_bready = 1;

        s_axi_awaddr = 32'h00; // RD_ADDR
        s_axi_wdata  = 32'h1000_0000;
        #10 s_axi_awaddr = 32'h04; // WR_ADDR
        s_axi_wdata  = 32'h2000_0000;
        #10 s_axi_awaddr = 32'h08; // LENGTH
        s_axi_wdata  = 32'd4;
        #10 s_axi_awaddr = 32'h0C; // CTRL - start
        s_axi_wdata  = 32'd1;

        #10 s_axi_awvalid = 0;
        s_axi_wvalid = 0;

        // Stream inputs
        repeat (4) begin
            @(posedge clk);
            s_axis_tvalid = 1;
            s_axis_tdata = $random;
            wait(s_axis_tready);
        end
        s_axis_tvalid = 0;

        m_axis_tready = 1;

        // Sim end
        #200 $finish;
    end

    // Device Under Test
    axi_dma_bridge dut (
        .clk(clk), .reset(reset),
        .s_axi_awvalid(s_axi_awvalid), .s_axi_awready(s_axi_awready),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_wvalid(s_axi_wvalid), .s_axi_wready(s_axi_wready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_bready(s_axi_bready), .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bresp(s_axi_bresp),

        .s_axi_arvalid(s_axi_arvalid), .s_axi_arready(s_axi_arready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_rready(s_axi_rready), .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rdata(s_axi_rdata), .s_axi_rresp(s_axi_rresp),

        .s_axis_tvalid(s_axis_tvalid), .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),

        .m_axis_tvalid(m_axis_tvalid), .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),

        .m_axi_arvalid(m_axi_arvalid), .m_axi_arready(m_axi_arready),
        .m_axi_araddr(m_axi_araddr), .m_axi_arlen(m_axi_arlen),
        .m_axi_rvalid(m_axi_rvalid), .m_axi_rready(m_axi_rready),
        .m_axi_rdata(m_axi_rdata),

        .m_axi_awvalid(m_axi_awvalid), .m_axi_awready(m_axi_awready),
        .m_axi_awaddr(m_axi_awaddr), .m_axi_awlen(m_axi_awlen),
        .m_axi_wvalid(m_axi_wvalid), .m_axi_wready(m_axi_wready),
        .m_axi_wdata(m_axi_wdata)
    );

endmodule

