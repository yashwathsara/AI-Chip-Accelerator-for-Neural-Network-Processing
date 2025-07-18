`timescale 1ns/1ps

module axi_dma_bridge #(
    parameter int DATA_WIDTH = 8,
    parameter int AXI_LITE_DATA_WIDTH = 32,
    parameter int ADDR_WIDTH = 5,
    parameter int BURST_LEN = 16,
    parameter int TIMEOUT_CYCLES = 256
)(
    input  logic                     clk,
    input  logic                     reset,
    input  logic                     s_axi_awvalid,
    output logic                     s_axi_awready,
    input  logic [ADDR_WIDTH-1:0]    s_axi_awaddr,
    input  logic                     s_axi_wvalid,
    output logic                     s_axi_wready,
    input  logic [AXI_LITE_DATA_WIDTH-1:0] s_axi_wdata,
    input  logic                     s_axi_bready,
    output logic                     s_axi_bvalid,
    output logic [1:0]               s_axi_bresp,
    input  logic                     s_axi_arvalid,
    output logic                     s_axi_arready,
    input  logic [ADDR_WIDTH-1:0]    s_axi_araddr,
    input  logic                     s_axi_rready,
    output logic                     s_axi_rvalid,
    output logic [AXI_LITE_DATA_WIDTH-1:0] s_axi_rdata,
    output logic [1:0]               s_axi_rresp,
    input  logic                     s_axis_tvalid,
    output logic                     s_axis_tready,
    input  logic [DATA_WIDTH-1:0]    s_axis_tdata,
    output logic                     m_axis_tvalid,
    input  logic                     m_axis_tready,
    output logic [DATA_WIDTH-1:0]    m_axis_tdata,
    output logic                     m_axi_arvalid,
    input  logic                     m_axi_arready,
    output logic [31:0]              m_axi_araddr,
    output logic [7:0]               m_axi_arlen,
    input  logic                     m_axi_rvalid,
    output logic                     m_axi_rready,
    input  logic [DATA_WIDTH-1:0]    m_axi_rdata,
    output logic                     m_axi_awvalid,
    input  logic                     m_axi_awready,
    output logic [31:0]              m_axi_awaddr,
    output logic [7:0]               m_axi_awlen,
    output logic                     m_axi_wvalid,
    input  logic                     m_axi_wready,
    output logic [DATA_WIDTH-1:0]    m_axi_wdata,
    output logic                     timeout_error
);

    typedef enum logic [2:0] {
        REG_RD_ADDR = 3'd0,
        REG_WR_ADDR = 3'd1,
        REG_LENGTH  = 3'd2,
        REG_CTRL    = 3'd3,
        REG_STATUS  = 3'd4
    } reg_map_t;

    logic [31:0] rd_addr_reg, wr_addr_reg;
    logic [15:0] length_reg;
    logic start_reg, busy_reg, done_reg;
    logic timeout_error_reg;

    typedef enum logic [2:0] {
        IDLE, READ_REQ, READ_STREAM, WRITE_REQ, WRITE_STREAM, DONE
    } state_t;
    state_t state;

    logic [15:0] beat_cnt;
    logic [7:0] timeout_counter;

    assign s_axi_awready = 1;
    assign s_axi_wready  = 1;
    assign s_axi_bvalid  = s_axi_bready;
    assign s_axi_bresp   = 2'b00;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            rd_addr_reg <= 0;
            wr_addr_reg <= 0;
            length_reg  <= 0;
            start_reg   <= 0;
        end else if (s_axi_awvalid && s_axi_wvalid) begin
            case (s_axi_awaddr[4:2])
                REG_RD_ADDR: rd_addr_reg <= s_axi_wdata;
                REG_WR_ADDR: wr_addr_reg <= s_axi_wdata;
                REG_LENGTH:  length_reg  <= s_axi_wdata[15:0];
                REG_CTRL:    start_reg   <= s_axi_wdata[0];
            endcase
        end else if (state == IDLE) begin
            start_reg <= 0;
        end
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            busy_reg <= 0;
            done_reg <= 0;
            beat_cnt <= 0;
            timeout_counter <= 0;
            timeout_error_reg <= 0;
        end else begin
            case (state)
                IDLE: begin
                    beat_cnt <= 0;
                    timeout_counter <= 0;
                    timeout_error_reg <= 0;
                    if (start_reg) begin
                        busy_reg <= 1;
                        done_reg <= 0;
                        state <= READ_REQ;
                    end
                end
                READ_REQ: begin
                    if (m_axi_arready) begin
                        state <= READ_STREAM;
                    end else if (timeout_counter >= TIMEOUT_CYCLES-1) begin
                        timeout_error_reg <= 1;
                        state <= DONE;
                    end else begin
                        timeout_counter <= timeout_counter + 1;
                    end
                end
                READ_STREAM: begin
                    if (m_axi_rvalid && m_axis_tready) begin
                        if (beat_cnt == length_reg - 1) begin
                            beat_cnt <= 0;
                            state <= WRITE_REQ;
                        end else begin
                            beat_cnt <= beat_cnt + 1;
                        end
                    end
                end
                WRITE_REQ: begin
                    if (m_axi_awready) begin
                        state <= WRITE_STREAM;
                    end else if (timeout_counter >= TIMEOUT_CYCLES-1) begin
                        timeout_error_reg <= 1;
                        state <= DONE;
                    end else begin
                        timeout_counter <= timeout_counter + 1;
                    end
                end
                WRITE_STREAM: begin
                    if (s_axis_tvalid && m_axi_wready) begin
                        if (beat_cnt == length_reg - 1) begin
                            beat_cnt <= 0;
                            state <= DONE;
                        end else begin
                            beat_cnt <= beat_cnt + 1;
                        end
                    end
                end
                DONE: begin
                    busy_reg <= 0;
                    done_reg <= 1;
                    timeout_counter <= 0;
                    state <= IDLE;
                end
            endcase
        end
    end

    assign m_axi_arvalid = (state == READ_REQ);
    assign m_axi_araddr  = rd_addr_reg;
    assign m_axi_arlen   = length_reg[7:0] - 1;
    assign m_axi_rready  = (state == READ_STREAM);
    assign m_axis_tvalid = m_axi_rvalid && (state == READ_STREAM);
    assign m_axis_tdata  = m_axi_rdata;
    assign m_axi_awvalid = (state == WRITE_REQ);
    assign m_axi_awaddr  = wr_addr_reg;
    assign m_axi_awlen   = length_reg[7:0] - 1;
    (* dont_touch = "true" *) assign m_axi_wvalid = (state == WRITE_STREAM);
    assign m_axi_wdata   = s_axis_tdata;
    assign s_axis_tready = (state == WRITE_STREAM);
    assign s_axi_arready = 1;
    assign s_axi_rvalid  = s_axi_rready;
    assign s_axi_rresp   = 2'b00;
    assign timeout_error = timeout_error_reg;

    always_comb begin
        case (s_axi_araddr[4:2])
            REG_RD_ADDR: s_axi_rdata = rd_addr_reg;
            REG_WR_ADDR: s_axi_rdata = wr_addr_reg;
            REG_LENGTH:  s_axi_rdata = {16'b0, length_reg};
            REG_CTRL:    s_axi_rdata = {31'b0, busy_reg};
            REG_STATUS:  s_axi_rdata = {30'b0, timeout_error_reg, done_reg};
            default:     s_axi_rdata = 32'b0;
        endcase
    end

endmodule