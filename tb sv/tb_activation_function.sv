
`timescale 1ns/1ps

module tb_activation_function;

    parameter DATA_WIDTH = 32;

    // DUT signals
    reg clk;
    reg reset;
    reg s_axis_tvalid;
    wire s_axis_tready;
    reg [DATA_WIDTH-1:0] s_axis_tdata;
    reg s_axis_tlast;
    wire m_axis_tvalid;
    reg m_axis_tready;
    wire [DATA_WIDTH-1:0] m_axis_tdata;
    wire m_axis_tlast;

    // Instantiate DUT
    activation_function #(
        .DATA_WIDTH(DATA_WIDTH),
        .ACTIVATION_MODE(0)  // RELU
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

    task apply_reset;
    begin
        reset = 1;
        #20;
        reset = 0;
    end
    endtask

    initial begin
        // Init
        s_axis_tvalid = 0;
        s_axis_tdata = 0;
        s_axis_tlast = 0;
        m_axis_tready = 1;

        apply_reset();

        // Send positive input
        @(posedge clk);
        s_axis_tdata = 32'h00000010;  // +16
        s_axis_tvalid = 1;
        s_axis_tlast = 0;
        @(posedge clk);
        while (!s_axis_tready) @(posedge clk);
        s_axis_tvalid = 0;

        // Send negative input
        @(posedge clk);
        s_axis_tdata = 32'h80000010;  // -16 in 2's complement
        s_axis_tvalid = 1;
        s_axis_tlast = 1;
        @(posedge clk);
        while (!s_axis_tready) @(posedge clk);
        s_axis_tvalid = 0;

        // Wait for output
        repeat (10) @(posedge clk);
        $finish;
    end

    // Output Monitor
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready) begin
            $display("Output @ %0t = %h (last = %b)", $time, m_axis_tdata, m_axis_tlast);
        end
    end

endmodule
