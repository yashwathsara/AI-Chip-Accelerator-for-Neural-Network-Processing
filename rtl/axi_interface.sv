`timescale 1ns/1ps


module axi_interface #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32
)(
    input  logic                  clk,
    input  logic                  reset,

    // AXI Write Address Channel
    input  logic [ADDR_WIDTH-1:0] awaddr,
    input  logic                  awvalid,
    output logic                  awready,

    // AXI Write Data Channel
    input  logic [DATA_WIDTH-1:0] wdata,
    input  logic                  wvalid,
    output logic                  wready,

    // AXI Write Response Channel
    output logic [1:0]            bresp,   // Response code
    output logic                  bvalid,
    input  logic                  bready,

    // AXI Read Address Channel
    input  logic [ADDR_WIDTH-1:0] araddr,
    input  logic                  arvalid,
    output logic                  arready,

    // AXI Read Data Channel
    output logic [DATA_WIDTH-1:0] rdata,
    output logic [1:0]            rresp,   // Response code
    output logic                  rvalid,
    input  logic                  rready,

    // Memory Interface
    output logic [ADDR_WIDTH-1:0] mem_addr,
    output logic                  mem_read,
    output logic                  mem_write,
    output logic [DATA_WIDTH-1:0] mem_wdata,
    input  logic [DATA_WIDTH-1:0] mem_rdata,
    input  logic                  mem_ready
);

    // Internal registers for handshake and control
    logic awready_reg, wready_reg, bvalid_reg;
    logic arready_reg, rvalid_reg;
    logic [1:0] bresp_reg, rresp_reg;
    logic [DATA_WIDTH-1:0] rdata_reg;

    // Write Address Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            awready_reg <= 0;
        end else if (awvalid && !awready_reg) begin
            awready_reg <= 1; // Accept address
        end else begin
            awready_reg <= 0;
        end
    end
    assign awready = awready_reg;

    // Write Data Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            wready_reg <= 0;
            mem_write  <= 0;
        end else if (wvalid && awready_reg) begin
            mem_addr  <= awaddr;
            mem_wdata <= wdata;
            mem_write <= 1;
            wready_reg <= 1;
        end else begin
            wready_reg <= 0;
            mem_write  <= 0;
        end
    end
    assign wready = wready_reg;

    // Write Response Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            bvalid_reg <= 0;
            bresp_reg  <= 2'b00; // OKAY response
        end else if (wvalid && wready_reg) begin
            bvalid_reg <= 1;
            bresp_reg  <= 2'b00; // OKAY
        end else if (bready && bvalid_reg) begin
            bvalid_reg <= 0;
        end
    end
    assign bvalid = bvalid_reg;
    assign bresp = bresp_reg;

    // Read Address Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            arready_reg <= 0;
        end else if (arvalid && !arready_reg) begin
            mem_addr <= araddr;
            mem_read <= 1;
            arready_reg <= 1;
        end else begin
            arready_reg <= 0;
            mem_read    <= 0;
        end
    end
    assign arready = arready_reg;

    // Read Data Handling
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            rvalid_reg <= 0;
            rdata_reg  <= 0;
            rresp_reg  <= 2'b00; // OKAY response
        end else if (mem_ready) begin
            rvalid_reg <= 1;
            rdata_reg  <= mem_rdata;
            rresp_reg  <= 2'b00; // OKAY response
        end else if (rvalid_reg && rready) begin
            rvalid_reg <= 0;
        end
    end
    assign rvalid = rvalid_reg;
    assign rdata  = rdata_reg;
    assign rresp  = rresp_reg;

endmodule
