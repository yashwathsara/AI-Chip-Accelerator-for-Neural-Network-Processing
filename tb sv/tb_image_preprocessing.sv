
`timescale 1ns / 1ps

module tb_image_preprocessing;

    parameter DATA_WIDTH = 8;
    parameter PIXEL_COUNT = 10;

    // DUT signals
    reg clk;
    reg rst_n;
    reg enable;
    reg frame_start;

    reg  [3*DATA_WIDTH-1:0] s_axis_tdata;
    reg                     s_axis_tvalid;
    wire                    s_axis_tready;

    wire [3*DATA_WIDTH-1:0] m_axis_tdata;
    wire                    m_axis_tvalid;
    reg                     m_axis_tready;

    // Instantiate DUT
    image_preprocessing uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .frame_start(frame_start),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz clock

    // Task: Apply reset
    task apply_reset;
    begin
        rst_n = 0;
        #20;
        rst_n = 1;
        #10;
    end
    endtask

    // Task: Send RGB pixel
    task send_pixel(input [7:0] r, input [7:0] g, input [7:0] b);
    begin
        @(posedge clk);
        if (s_axis_tready) begin
            s_axis_tdata  <= {r, g, b};
            s_axis_tvalid <= 1;
        end else begin
            s_axis_tvalid <= 0;
        end
    end
    endtask

    // Main test
    integer i;
    reg [7:0] r_val, g_val, b_val;

    initial begin
        // Init
        s_axis_tdata  = 0;
        s_axis_tvalid = 0;
        m_axis_tready = 1;
        enable        = 0;
        frame_start   = 0;

        apply_reset();

        @(posedge clk);
        enable      <= 1;
        frame_start <= 1;

        @(posedge clk);
        frame_start <= 0;

        // Send N pixels with varying values
        for (i = 0; i < PIXEL_COUNT; i = i + 1) begin
            r_val = i * 10;
            g_val = i * 5;
            b_val = 255 - i * 20;

            send_pixel(r_val, g_val, b_val);
        end

        // End input
        @(posedge clk);
        s_axis_tvalid <= 0;

        // Wait for output data
        repeat(10) @(posedge clk);

        $finish;
    end

    // Monitor Output
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready) begin
            $display("Normalized Output @ %0t: R=%0d, G=%0d, B=%0d",
                $time,
                m_axis_tdata[23:16],
                m_axis_tdata[15:8],
                m_axis_tdata[7:0]
            );
        end
    end

endmodule
