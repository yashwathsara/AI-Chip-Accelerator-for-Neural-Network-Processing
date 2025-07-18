`timescale 1ns / 1ps

module interrupt_controller #(
    parameter int NUM_INTERRUPTS = 8,
    parameter int DATA_WIDTH     = 8
)(
    input  logic                         clk,
    input  logic                         reset,
    input  logic [NUM_INTERRUPTS-1:0]    irq_in,
    input  logic                         s_axi_awvalid,
    output logic                         s_axi_awready,
    input  logic [DATA_WIDTH-1:0]        s_axi_awaddr,
    input  logic                         s_axi_wvalid,
    output logic                         s_axi_wready,
    input  logic [DATA_WIDTH-1:0]        s_axi_wdata,
    input  logic [DATA_WIDTH/8-1:0]      s_axi_wstrb,
    input  logic                         s_axi_bready,
    output logic                         s_axi_bvalid,
    output logic [1:0]                   s_axi_bresp,
    input  logic                         s_axi_arvalid,
    output logic                         s_axi_arready,
    input  logic [DATA_WIDTH-1:0]        s_axi_araddr,
    input  logic                         s_axi_rready,
    output logic                         s_axi_rvalid,
    output logic [DATA_WIDTH-1:0]        s_axi_rdata,
    output logic [1:0]                   s_axi_rresp,
    output logic                         interrupt,
    output logic [$clog2(NUM_INTERRUPTS)-1:0] interrupt_vector
);

    localparam STATUS_ADDR = 8'h00;
    localparam ENABLE_ADDR = 8'h04;
    localparam CLEAR_ADDR  = 8'h08;

    logic [NUM_INTERRUPTS-1:0] irq_latched, irq_in_d, irq_enable;
    logic [DATA_WIDTH-1:0] read_data;
    logic [NUM_INTERRUPTS-1:0] irq_clear;

    initial begin
        if (NUM_INTERRUPTS <= 0)
            $fatal("NUM_INTERRUPTS must be greater than 0");
        if (DATA_WIDTH < NUM_INTERRUPTS)
            $fatal("DATA_WIDTH must be at least as wide as NUM_INTERRUPTS");
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            irq_in_d    <= '0;
            irq_latched <= '0;
        end else begin
            irq_in_d    <= irq_in;
            irq_latched <= (irq_latched | ((~irq_in_d) & irq_in)) & ~irq_clear;
        end
    end

    always_comb begin
        interrupt_vector = '0;
        (* keep = "true" *)
        for (int i = 0; i < NUM_INTERRUPTS; i++) begin
            if (irq_latched[i]) begin
                interrupt_vector = i;
                break;
            end
        end
    end

    assign interrupt = |(irq_latched & irq_enable);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            irq_enable <= '0;
            irq_clear  <= '0;
        end else begin
            irq_clear <= '0;
            if (s_axi_awvalid && s_axi_wvalid) begin
                case (s_axi_awaddr)
                    ENABLE_ADDR: begin
                        if (s_axi_wstrb[0]) begin
                            irq_enable <= s_axi_wdata[NUM_INTERRUPTS-1:0];
                        end
                    end
                    CLEAR_ADDR: begin
                        if (s_axi_wstrb[0]) begin
                            irq_clear <= s_axi_wdata[NUM_INTERRUPTS-1:0];
                        end
                    end
                    default: ;
                endcase
            end
        end
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            read_data <= '0;
        end else if (s_axi_arvalid) begin
            case (s_axi_araddr)
                STATUS_ADDR: read_data <= {{(DATA_WIDTH-NUM_INTERRUPTS){1'b0}}, irq_latched};
                ENABLE_ADDR: read_data <= {{(DATA_WIDTH-NUM_INTERRUPTS){1'b0}}, irq_enable};
                default:     read_data <= '0;
            endcase
        end
    end

    assign s_axi_awready = 1'b1;
    assign s_axi_wready  = 1'b1;
    assign s_axi_bvalid  = s_axi_awvalid && s_axi_wvalid;
    assign s_axi_bresp   = 2'b00;
    assign s_axi_arready = 1'b1;
    assign s_axi_rvalid  = s_axi_arvalid && s_axi_rready;
    assign s_axi_rdata   = read_data;
    assign s_axi_rresp   = 2'b00;

endmodule