`timescale 1ns / 1ps

module tb_weight_loader;

    parameter int DATA_WIDTH = 32;
    parameter int MAX_WEIGHTS = 1024;

    // Clock and reset
    logic clk;
    logic reset;

    // Config interface
    logic cfg_valid;
    logic [DATA_WIDTH-1:0] cfg_addr;
    logic [15:0] cfg_length;

    // Stream input
    logic weight_tvalid;
    logic weight_tready;
    logic [DATA_WIDTH-1:0] weight_tdata;

    // Outputs
    logic [DATA_WIDTH-1:0] weight_mem [0:MAX_WEIGHTS-1];
    logic [15:0] weights_loaded;
    logic error;

    // Instantiate DUT
    weight_loader #(
        .DATA_WIDTH(DATA_WIDTH),
        .MAX_WEIGHTS(MAX_WEIGHTS)
    ) dut (
        .clk(clk),
        .reset(reset),
        .cfg_valid(cfg_valid),
        .cfg_addr(cfg_addr),
        .cfg_length(cfg_length),
        .weight_tvalid(weight_tvalid),
        .weight_tready(weight_tready),
        .weight_tdata(weight_tdata),
        .weight_mem(weight_mem),
        .weights_loaded(weights_loaded),
        .error(error)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $display("Starting weight_loader testbench");

        clk = 0;
        reset = 1;
        cfg_valid = 0;
        cfg_addr = 0;
        cfg_length = 0;
        weight_tvalid = 0;
        weight_tdata = 0;
        
        repeat (2) @(posedge clk);
        reset = 0;

        // Configure weight loading
        @(posedge clk);
        cfg_addr = 10;
        cfg_length = 4;
        cfg_valid = 1;
        @(posedge clk);
        cfg_valid = 0;

        // Send 4 weight values
        repeat (4) begin
            @(posedge clk);
            weight_tvalid = 1;
            weight_tdata = $random;
            while (!weight_tready) @(posedge clk);
        end

        @(posedge clk);
        weight_tvalid = 0;

        // Wait and check outputs
        repeat (5) @(posedge clk);

        $display("Weights loaded: %0d", weights_loaded);
        $display("Error flag: %b", error);
        for (int i = 10; i < 14; i++) begin
            $display("Weight[%0d] = %h", i, weight_mem[i]);
        end

        $finish;
    end

endmodule

