
`timescale 1ns / 1ps

module tb_convolution_engine;

    parameter DATA_WIDTH   = 32;
    parameter MAX_KERNEL   = 5;
    parameter MAX_CHANNELS = 3;
    parameter IMAGE_SIZE   = 4;

    // DUT ports
    reg clk;
    reg reset;

    reg s_axis_tvalid;
    wire s_axis_tready;
    reg [MAX_CHANNELS-1:0][DATA_WIDTH-1:0] s_axis_tdata;

    reg s_kernel_tvalid;
    wire s_kernel_tready;
    reg [MAX_CHANNELS-1:0][MAX_KERNEL*MAX_KERNEL-1:0][DATA_WIDTH-1:0] s_kernel_tdata;

    reg [3:0] kernel_size;
    reg [3:0] num_channels;
    reg [3:0] stride;
    reg [3:0] padding;

    wire m_axis_tvalid;
    reg  m_axis_tready;
    wire [DATA_WIDTH-1:0] m_axis_tdata;

    // Instantiate DUT
    convolution_engine dut (
        .clk(clk),
        .reset(reset),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_kernel_tvalid(s_kernel_tvalid),
        .s_kernel_tready(s_kernel_tready),
        .s_kernel_tdata(s_kernel_tdata),
        .kernel_size(kernel_size),
        .num_channels(num_channels),
        .stride(stride),
        .padding(padding),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    // Reset task
    task apply_reset;
    begin
        reset = 1;
        #20;
        reset = 0;
    end
    endtask

    // Initialization
    integer i, j, ch;
    initial begin
        clk = 0;
        reset = 0;
        s_axis_tvalid = 0;
        s_kernel_tvalid = 0;
        s_axis_tdata = '0;
        s_kernel_tdata = '0;
        m_axis_tready = 1;

        kernel_size = 3;
        num_channels = 3;
        stride = 1;
        padding = 1;

        apply_reset();

        // Send kernel
        s_kernel_tvalid = 1;
        for (ch = 0; ch < MAX_CHANNELS; ch = ch + 1)
            for (i = 0; i < MAX_KERNEL*MAX_KERNEL; i = i + 1)
                s_kernel_tdata[ch][i] = 32'd1; // all ones

        @(posedge clk);
        while (!s_kernel_tready) @(posedge clk);
        s_kernel_tvalid = 0;

        // Send image
        for (i = 0; i < IMAGE_SIZE; i = i + 1) begin
            for (j = 0; j < IMAGE_SIZE; j = j + 1) begin
                for (ch = 0; ch < MAX_CHANNELS; ch = ch + 1)
                    s_axis_tdata[ch] = i * IMAGE_SIZE + j + ch;
                s_axis_tvalid = 1;
                @(posedge clk);
                while (!s_axis_tready) @(posedge clk);
            end
        end
        s_axis_tvalid = 0;

        // Wait for output
        repeat(50) @(posedge clk);
        $finish;
    end

    // Monitor output
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready) begin
            $display("Output @ %0t = %0d", $time, m_axis_tdata);
        end
    end

endmodule
