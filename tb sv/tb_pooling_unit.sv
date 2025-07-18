
`timescale 1ns/1ps

module tb_pooling_unit;

    parameter DATA_WIDTH = 32;
    parameter KERNEL_SIZE = 2;

    reg clk;
    reg reset;
    reg s_axis_tvalid;
    wire s_axis_tready;
    reg [DATA_WIDTH-1:0] s_axis_tdata;
    reg s_axis_tlast;
    wire m_axis_tvalid;
    reg  m_axis_tready;
    wire [DATA_WIDTH-1:0] m_axis_tdata;
    wire m_axis_tlast;

    // Instantiate DUT
    pooling_unit #(
        .DATA_WIDTH(DATA_WIDTH),
        .KERNEL_SIZE(KERNEL_SIZE),
        .POOL_TYPE(0) // 0 = MAX
    ) dut (
        .clk(clk),
        .reset(reset),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Reset Task
    task apply_reset;
    begin
        reset = 1;
        #20;
        reset = 0;
    end
    endtask

    // Stimulus
    integer i;
    initial begin
        s_axis_tvalid = 0;
        s_axis_tdata = 0;
        s_axis_tlast = 0;
        m_axis_tready = 1;

        apply_reset();

        @(posedge clk);
        s_axis_tvalid = 1;
        for (i = 0; i < KERNEL_SIZE * KERNEL_SIZE; i = i + 1) begin
            s_axis_tdata = 10 + i;
            s_axis_tlast = (i == KERNEL_SIZE * KERNEL_SIZE - 1);
            @(posedge clk);
            while (!s_axis_tready) @(posedge clk);
        end
        s_axis_tvalid = 0;

        repeat (10) @(posedge clk);
        $finish;
    end

    // Output Monitor
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready) begin
            $display("Output @ %0t: %0d (last = %b)", $time, m_axis_tdata, m_axis_tlast);
        end
    end

endmodule
