
`timescale 1ns/1ps

module tb_fc_layer;

    parameter INPUT_SIZE  = 4;
    parameter OUTPUT_SIZE = 2;
    parameter DATA_WIDTH  = 16;

    logic clk;
    logic reset;
    logic start;
    logic done;

    logic signed [INPUT_SIZE*DATA_WIDTH-1:0]  input_data_flat;
    logic signed [OUTPUT_SIZE*INPUT_SIZE*DATA_WIDTH-1:0] weights_flat;
    logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0]            bias_flat;
    logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0]            output_data_flat;

    // Instantiate DUT
    fc_layer #(
        .INPUT_SIZE(INPUT_SIZE),
        .OUTPUT_SIZE(OUTPUT_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .done(done),
        .input_data_flat(input_data_flat),
        .weights_flat(weights_flat),
        .bias_flat(bias_flat),
        .output_data_flat(output_data_flat)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    task apply_reset;
    begin
        reset = 1;
        start = 0;
        input_data_flat = '0;
        weights_flat = '0;
        bias_flat = '0;
        #20;
        reset = 0;
    end
    endtask

    // Stimulus
    initial begin
        apply_reset();
        @(posedge clk);

        // Provide input data
        input_data_flat = {
            16'sd4, 16'sd3, 16'sd2, 16'sd1
        };

        // Provide weights
        weights_flat = {
            16'sd1, 16'sd1, 16'sd1, 16'sd1,  // Output neuron 0
            16'sd2, 16'sd2, 16'sd2, 16'sd2   // Output neuron 1
        };

        // Provide bias
        bias_flat = {
            16'sd0, 16'sd5
        };

        @(posedge clk);
        start = 1;
        @(posedge clk);
        start = 0;

        // Wait for done
        wait (done == 1);
        $display("Output Data: %0d %0d",
            output_data_flat[2*DATA_WIDTH-1 -: DATA_WIDTH],
            output_data_flat[1*DATA_WIDTH-1 -: DATA_WIDTH]
        );

        #20;
        $finish;
    end

endmodule
