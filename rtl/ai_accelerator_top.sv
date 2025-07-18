`timescale 1ns/1ps

module ai_accelerator_top #(
    parameter DATA_WIDTH = 8,
    parameter INPUT_SIZE = 128,
    parameter OUTPUT_SIZE = 64,
    parameter OUTPUT_SELECT = 0,
    parameter IMAGE_SIZE = 64,
    parameter ADDR_WIDTH = 32,
    parameter MAX_WEIGHTS = OUTPUT_SIZE * (INPUT_SIZE + 1)
)(
    input logic clk,
    input logic rst_n,
    input  logic                       s_axis_input_tvalid,
    output logic                       s_axis_input_tready,
    input  logic [DATA_WIDTH*3-1:0]    s_axis_input_tdata,
    input  logic                       s_axis_input_tlast,
    output logic                       m_axis_output_tvalid,
    input  logic                       m_axis_output_tready,
    output logic [DATA_WIDTH*3-1:0]    m_axis_output_tdata,
    output logic                       m_axis_output_tlast,
    input  logic                       s_axi_awvalid,
    output logic                       s_axi_awready,
    input  logic [31:0]                s_axi_awaddr,
    input  logic                       s_axi_wvalid,
    output logic                       s_axi_wready,
    input  logic [31:0]                s_axi_wdata,
    input  logic [3:0]                 s_axi_wstrb,
    output logic                       s_axi_bvalid,
    input  logic                       s_axi_bready,
    output logic [1:0]                 s_axi_bresp,
    input  logic                       s_axi_arvalid,
    output logic                       s_axi_arready,
    input  logic [31:0]                s_axi_araddr,
    output logic                       s_axi_rvalid,
    input  logic                       s_axi_rready,
    output logic [31:0]                s_axi_rdata,
    output logic [1:0]                 s_axi_rresp,
    input  logic                       s_kernel_tvalid,
    output logic                       s_kernel_tready,
    input  logic [599:0]               s_kernel_tdata,
    output logic                       m_axi_arvalid,
    input  logic                       m_axi_arready,
    output logic [ADDR_WIDTH-1:0]      m_axi_araddr,
    output logic [7:0]                 m_axi_arlen,
    input  logic                       m_axi_rvalid,
    output logic                       m_axi_rready,
    input  logic [DATA_WIDTH-1:0]      m_axi_rdata,
    output logic                       m_axi_awvalid,
    input  logic                       m_axi_awready,
    output logic [ADDR_WIDTH-1:0]      m_axi_awaddr,
    output logic [7:0]                 m_axi_awlen,
    output logic                       m_axi_wvalid,
    input  logic                       m_axi_wready,
    output logic [DATA_WIDTH-1:0]      m_axi_wdata,
    output logic                       axi_valid_out,
    output logic [DATA_WIDTH-1:0]      processed_data,
    output logic                       valid_out,
    output logic                       done,
    output logic [7:0]                 debug_out,
    output logic                       error
);

    logic sync_reset;
    logic clk_conv, clk_pool, clk_fc;
    logic [31:0] reg_file [0:15];
    logic [2:0][24:0][7:0] kernel_matrix;
    logic [3*DATA_WIDTH-1:0] preproc_data;
    logic preproc_valid, preproc_tready, conv_tready, conv_ready_internal;
    logic [2:0][7:0] conv_input;
    logic [DATA_WIDTH-1:0] conv_out, activation_out, pooled_out;
    logic conv_valid, act_valid, pool_valid, fc_valid;
    logic start_process, process_done, load_data, compute_enable, store_result;
    logic busy;
    logic pipeline_error, weight_error, mem_timeout_error;
    logic [7:0] irq_in;
    logic irq;
    logic [2:0] irq_vector;
    logic [DATA_WIDTH-1:0] weight_mem [0:MAX_WEIGHTS-1];
    logic [DATA_WIDTH-1:0] weight_data;
    logic weight_tvalid, weight_tready;
    logic [15:0] weights_loaded;
    logic [31:0] total_cycles, busy_cycles, idle_cycles, utilization;
    logic [$clog2(INPUT_SIZE)-1:0] input_data_idx;

    assign error = pipeline_error || weight_error || mem_timeout_error;
    assign busy = preproc_valid || conv_valid || act_valid || pool_valid || fc_valid;

    logic s_axi_awready_reg, s_axi_wready_reg, s_axi_bvalid_reg;
    logic [1:0] s_axi_bresp_reg;
    logic s_axi_arready_reg, s_axi_rvalid_reg;
    logic [31:0] s_axi_rdata_reg;
    logic [1:0] s_axi_rresp_reg;
    logic s_axi_awready_irq, s_axi_wready_irq, s_axi_bvalid_irq;
    logic [1:0] s_axi_bresp_irq;
    logic s_axi_arready_irq, s_axi_rvalid_irq;
    logic [7:0] s_axi_rdata_irq;
    logic [1:0] s_axi_rresp_irq;
    logic s_axi_awready_dma, s_axi_wready_dma, s_axi_bvalid_dma;
    logic [1:0] s_axi_bresp_dma;
    logic s_axi_arready_dma, s_axi_rvalid_dma;
    logic [31:0] s_axi_rdata_dma;
    logic [1:0] s_axi_rresp_dma;

    always_comb begin
        case (s_axi_awaddr[7:6])
            2'b00: begin
                s_axi_awready = s_axi_awready_reg;
                s_axi_wready  = s_axi_wready_reg;
                s_axi_bvalid  = s_axi_bvalid_reg;
                s_axi_bresp   = s_axi_bresp_reg;
            end
            2'b01: begin
                s_axi_awready = s_axi_awready_irq;
                s_axi_wready  = s_axi_wready_irq;
                s_axi_bvalid  = s_axi_bvalid_irq;
                s_axi_bresp   = s_axi_bresp_irq;
            end
            2'b10: begin
                s_axi_awready = s_axi_awready_dma;
                s_axi_wready  = s_axi_wready_dma;
                s_axi_bvalid  = s_axi_bvalid_dma;
                s_axi_bresp   = s_axi_bresp_dma;
            end
            default: begin
                s_axi_awready = 0;
                s_axi_wready  = 0;
                s_axi_bvalid  = 0;
                s_axi_bresp   = 2'b11;
            end
        endcase
        case (s_axi_araddr[7:6])
            2'b00: begin
                s_axi_arready = s_axi_arready_reg;
                s_axi_rvalid  = s_axi_rvalid_reg;
                s_axi_rdata   = s_axi_rdata_reg;
                s_axi_rresp   = s_axi_rresp_reg;
            end
            2'b01: begin
                s_axi_arready = s_axi_arready_irq;
                s_axi_rvalid  = s_axi_rvalid_irq;
                s_axi_rdata   = {{24{1'b0}}, s_axi_rdata_irq};
                s_axi_rresp   = s_axi_rresp_irq;
            end
            2'b10: begin
                s_axi_arready = s_axi_arready_dma;
                s_axi_rvalid  = s_axi_rvalid_dma;
                s_axi_rdata   = s_axi_rdata_dma;
                s_axi_rresp   = s_axi_rresp_dma;
            end
            default: begin
                s_axi_arready = 0;
                s_axi_rvalid  = 0;
                s_axi_rdata   = 32'b0;
                s_axi_rresp   = 2'b11;
            end
        endcase
    end

    always_ff @(posedge clk or posedge sync_reset) begin
        if (sync_reset) begin
            s_axi_awready_reg <= 0;
            s_axi_wready_reg  <= 0;
            s_axi_bvalid_reg  <= 0;
            s_axi_bresp_reg   <= 2'b00;
            for (int i = 0; i < 16; i++) reg_file[i] <= 32'b0;
        end else if (s_axi_awaddr[7:6] == 2'b00) begin
            s_axi_awready_reg <= s_axi_awvalid;
            s_axi_wready_reg  <= s_axi_wvalid;
            if (s_axi_awvalid && s_axi_wvalid) begin
                for (int i = 0; i < 4; i++) begin
                    if (s_axi_wstrb[i]) begin
                        reg_file[s_axi_awaddr[5:2]][i*8 +: 8] <= s_axi_wdata[i*8 +: 8];
                    end
                end
                s_axi_bvalid_reg <= 1;
            end else if (s_axi_bvalid_reg && s_axi_bready) begin
                s_axi_bvalid_reg <= 0;
            end
        end
    end

    always_ff @(posedge clk or posedge sync_reset) begin
        if (sync_reset) begin
            s_axi_arready_reg <= 0;
            s_axi_rvalid_reg  <= 0;
            s_axi_rdata_reg   <= 32'd0;
            s_axi_rresp_reg   <= 2'b00;
        end else if (s_axi_araddr[7:6] == 2'b00) begin
            s_axi_arready_reg <= s_axi_arvalid;
            if (s_axi_arvalid) begin
                s_axi_rvalid_reg <= 1;
                case (s_axi_araddr[5:2])
                    4'hA: s_axi_rdata_reg <= total_cycles;
                    4'hB: s_axi_rdata_reg <= busy_cycles;
                    4'hC: s_axi_rdata_reg <= idle_cycles;
                    4'hD: s_axi_rdata_reg <= utilization;
                    default: s_axi_rdata_reg <= reg_file[s_axi_araddr[5:2]];
                endcase
            end else if (s_axi_rvalid_reg && s_axi_rready) begin
                s_axi_rvalid_reg <= 0;
            end
        end
    end

    always_comb begin
        for (int ch0 = 0; ch0 < 3; ch0++)
            for (int k = 0; k < 25; k++)
                kernel_matrix[ch0][k] = s_kernel_tdata[ch0*200 + k*8 +: 8];
    end

    (* ram_style = "block" *)
    logic signed [DATA_WIDTH-1:0] input_data_array [0:INPUT_SIZE-1];
    (* ram_style = "block" *)
    logic signed [DATA_WIDTH-1:0] weights_array [0:OUTPUT_SIZE-1][0:INPUT_SIZE-1];
    (* ram_style = "block" *)
    logic signed [DATA_WIDTH-1:0] bias_array [0:OUTPUT_SIZE-1];
    logic signed [DATA_WIDTH-1:0] output_data_array [0:OUTPUT_SIZE-1];

    logic signed [INPUT_SIZE*DATA_WIDTH-1:0] input_data_flat;
    logic signed [OUTPUT_SIZE*INPUT_SIZE*DATA_WIDTH-1:0] weights_flat;
    logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0] bias_flat;
    logic signed [OUTPUT_SIZE*DATA_WIDTH-1:0] output_data_flat;

    always_comb begin
        for (int i = 0; i < INPUT_SIZE; i++)
            input_data_flat[i*DATA_WIDTH +: DATA_WIDTH] = input_data_array[i];
        for (int i = 0; i < OUTPUT_SIZE; i++) begin
            bias_flat[i*DATA_WIDTH +: DATA_WIDTH] = bias_array[i];
            for (int j = 0; j < INPUT_SIZE; j++)
                weights_flat[(i*INPUT_SIZE+j)*DATA_WIDTH +: DATA_WIDTH] = weights_array[i][j];
        end
    end

    always_ff @(posedge clk or posedge sync_reset) begin
        if (sync_reset) begin
            input_data_idx <= 0;
            for (int i = 0; i < INPUT_SIZE; i++)
                input_data_array[i] <= '0;
        end else if (pool_valid) begin
            input_data_array[input_data_idx] <= pooled_out;
            input_data_idx <= input_data_idx + 1;
        end
    end

    always_ff @(posedge clk or posedge sync_reset) begin
        if (sync_reset) begin
            for (int i = 0; i < OUTPUT_SIZE; i++) begin
                bias_array[i] <= '0;
                for (int j = 0; j < INPUT_SIZE; j++)
                    weights_array[i][j] <= '0;
            end
        end else if (load_data && weights_loaded > 0) begin
            for (int i = 0; i < OUTPUT_SIZE; i++) begin
                bias_array[i] <= weight_mem[i];
                for (int j = 0; j < INPUT_SIZE; j++)
                    weights_array[i][j] <= weight_mem[i*INPUT_SIZE + j + OUTPUT_SIZE];
            end
        end
    end

    clock_reset_manager #(
        .CLK_FREQ(100_000_000),
        .SYNC_STAGES(2),
        .RESET_CYCLES(10)
    ) reset_mgr (
        .clk(clk),
        .async_reset(~rst_n),
        .sync_reset(sync_reset)
    );

    clock_gating_unit clk_gate (
        .clk(clk),
        .reset(sync_reset),
        .en_conv(compute_enable && conv_valid),
        .en_pool(compute_enable && pool_valid),
        .en_fc(compute_enable && fc_valid),
        .clk_conv(clk_conv),
        .clk_pool(clk_pool),
        .clk_fc(clk_fc)
    );

    image_preprocessing #(
        .WIDTH(IMAGE_SIZE),
        .HEIGHT(IMAGE_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) preproc (
        .clk(clk),
        .rst_n(~sync_reset),
        .enable(reg_file[0][0]),
        .frame_start(~rst_n),
        .s_axis_tdata(s_axis_input_tdata),
        .s_axis_tvalid(s_axis_input_tvalid),
        .s_axis_tready(s_axis_input_tready),
        .m_axis_tdata(preproc_data),
        .m_axis_tvalid(preproc_valid),
        .m_axis_tready(preproc_tready)
    );

    dataflow_controller #(
        .ADDR_WIDTH(2),
        .DATA_WIDTH(32)
    ) dataflow (
        .clk(clk),
        .reset(sync_reset),
        .start_process(reg_file[0][0]),
        .process_done(process_done),
        .cfg_addr(s_axi_awaddr[1:0]),
        .cfg_write(s_axi_awvalid && s_axi_wvalid && s_axi_awaddr[7:6] == 2'b00),
        .cfg_wdata(s_axi_wdata),
        .cfg_read(s_axi_arvalid && s_axi_araddr[7:6] == 2'b00),
        .cfg_rdata(),
        .cfg_ready(),
        .load_data(load_data),
        .compute_enable(compute_enable),
        .store_result(store_result),
        .data_ready(preproc_valid),
        .compute_done(fc_valid),
        .store_complete(m_axis_output_tvalid && m_axis_output_tready)
    );

    axi_dma_bridge #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(5),
        .BURST_LEN(16),
        .TIMEOUT_CYCLES(256)
    ) dma_bridge (
        .clk(clk),
        .reset(sync_reset),
        .s_axi_awvalid(s_axi_awvalid && s_axi_awaddr[7:6] == 2'b10),
        .s_axi_awready(s_axi_awready_dma),
        .s_axi_awaddr(s_axi_awaddr[4:0]),
        .s_axi_wvalid(s_axi_wvalid && s_axi_awaddr[7:6] == 2'b10),
        .s_axi_wready(s_axi_wready_dma),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid_dma),
        .s_axi_bresp(s_axi_bresp_dma),
        .s_axi_arvalid(s_axi_arvalid && s_axi_araddr[7:6] == 2'b10),
        .s_axi_arready(s_axi_arready_dma),
        .s_axi_araddr(s_axi_araddr[4:0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid_dma),
        .s_axi_rdata(s_axi_rdata_dma),
        .s_axi_rresp(s_axi_rresp_dma),
        .s_axis_tvalid(weight_tvalid),
        .s_axis_tready(weight_tready),
        .s_axis_tdata(weight_tdata),
        .m_axis_tvalid(),
        .m_axis_tready(1'b1),
        .m_axis_tdata(),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arready(m_axi_arready),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wdata(m_axi_wdata),
        .timeout_error(mem_timeout_error)
    );

    convolution_engine #(
        .DATA_WIDTH(DATA_WIDTH),
        .MAX_KERNEL(5),
        .MAX_CHANNELS(3),
        .IMAGE_SIZE(IMAGE_SIZE)
    ) conv (
        .clk(clk_conv),
        .reset(sync_reset),
        .s_axis_tvalid(preproc_valid),
        .s_axis_tready(conv_tready),
        .s_axis_tready_internal(conv_ready_internal),
        .s_axis_tdata({preproc_data[23:16], preproc_data[15:8], preproc_data[7:0]}),
        .s_axis_tlast(s_axis_input_tlast),
        .s_kernel_tvalid(s_kernel_tvalid),
        .s_kernel_tready(s_kernel_tready),
        .s_kernel_tdata({kernel_matrix[2], kernel_matrix[1], kernel_matrix[0]}),
        .kernel_size(reg_file[1][3:0]),
        .num_channels(4'd3),
        .stride(reg_file[2][3:0]),
        .padding(reg_file[3][3:0]),
        .m_axis_tvalid(conv_valid),
        .m_axis_tready(1'b1),
        .m_axis_tdata(conv_out),
        .m_axis_tlast()
    );

    // Updated conv_tready assignment to incorporate conv_ready_internal
    assign conv_tready = preproc_tready && conv_ready_internal && (pipe_ctrl.stage_valid[0] == 1'b0);

    activation_function #(
        .DATA_WIDTH(DATA_WIDTH)
    ) act_fn (
        .clk(clk),
        .reset(sync_reset),
        .s_axis_tvalid(conv_valid),
        .s_axis_tready(),
        .s_axis_tdata(conv_out),
        .s_axis_tlast(1'b0),
        .activation_mode(reg_file[4][1:0]),
        .m_axis_tvalid(act_valid),
        .m_axis_tready(1'b1),
        .m_axis_tdata(activation_out),
        .m_axis_tlast()
    );

    pooling_unit #(
        .DATA_WIDTH(DATA_WIDTH),
        .KERNEL_SIZE(2)
    ) pool (
        .clk(clk_pool),
        .reset(sync_reset),
        .s_axis_tvalid(act_valid),
        .s_axis_tready(),
        .s_axis_tdata(activation_out),
        .s_axis_tlast(1'b0),
        .pool_type(reg_file[5][0]),
        .m_axis_tvalid(pool_valid),
        .m_axis_tready(1'b1),
        .m_axis_tdata(pooled_out),
        .m_axis_tlast()
    );

    fc_layer #(
        .INPUT_SIZE(INPUT_SIZE),
        .OUTPUT_SIZE(OUTPUT_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) fc (
        .clk(clk_fc),
        .reset(sync_reset),
        .start(pool_valid),
        .done(fc_valid),
        .input_data_flat(input_data_flat),
        .weights_flat(weights_flat),
        .bias_flat(bias_flat),
        .output_data_flat(output_data_flat)
    );

    always_comb begin
        for (int i = 0; i < OUTPUT_SIZE; i++)
            output_data_array[i] = output_data_flat[i*DATA_WIDTH +: DATA_WIDTH];
    end

    logic weight_cfg_valid;
    logic [7:0] weight_cfg_addr;
    logic [15:0] weight_cfg_length;
    assign weight_cfg_valid  = reg_file[6][0];
    assign weight_cfg_addr   = reg_file[7][7:0];
    assign weight_cfg_length = reg_file[8][15:0];

    weight_loader #(
        .DATA_WIDTH(DATA_WIDTH),
        .MAX_WEIGHTS(MAX_WEIGHTS)
    ) loader (
        .clk(clk),
        .reset(sync_reset),
        .cfg_valid(weight_cfg_valid),
        .cfg_addr(weight_cfg_addr),
        .cfg_length(weight_cfg_length),
        .weight_tvalid(weight_tvalid),
        .weight_tready(weight_tready),
        .weight_tdata(weight_tdata),
        .weight_mem(weight_mem),
        .weights_loaded(weights_loaded),
        .error(weight_error)
    );

    performance_monitor #(
        .COUNTER_WIDTH(32)
    ) perf (
        .clk(clk),
        .reset(sync_reset),
        .busy(busy),
        .total_cycles(total_cycles),
        .busy_cycles(busy_cycles),
        .idle_cycles(idle_cycles),
        .utilization(utilization)
    );

    assign irq_in = {pipeline_error, weight_error, mem_timeout_error, fc_valid, pool_valid, act_valid, conv_valid, preproc_valid};
    interrupt_controller #(
        .NUM_INTERRUPTS(8),
        .DATA_WIDTH(8)
    ) irq_ctrl (
        .clk(clk),
        .reset(sync_reset),
        .irq_in(irq_in),
        .s_axi_awvalid(s_axi_awvalid && s_axi_awaddr[7:6] == 2'b01),
        .s_axi_awready(s_axi_awready_irq),
        .s_axi_awaddr(s_axi_awaddr[7:0]),
        .s_axi_wvalid(s_axi_wvalid && s_axi_awaddr[7:6] == 2'b01),
        .s_axi_wready(s_axi_wready_irq),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid_irq),
        .s_axi_bresp(s_axi_bresp_irq),
        .s_axi_arvalid(s_axi_arvalid && s_axi_araddr[7:6] == 2'b01),
        .s_axi_arready(s_axi_arready_irq),
        .s_axi_araddr(s_axi_araddr[7:0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid_irq),
        .s_axi_rdata(s_axi_rdata_irq),
        .s_axi_rresp(s_axi_rresp_irq),
        .interrupt(irq),
        .interrupt_vector(irq_vector)
    );

    pipeline_controller #(
        .DATA_WIDTH(3*DATA_WIDTH),
        .NUM_STAGES(4),
        .TIMEOUT_CYCLES(10)
    ) pipe_ctrl (
        .clk(clk),
        .reset(sync_reset),
        .in_valid(preproc_valid),
        .in_data(preproc_data),
        .in_ready(preproc_tready),
        .out_valid(m_axis_output_tvalid),
        .out_data(m_axis_output_tdata),
        .out_ready(m_axis_output_tready),
        .error(pipeline_error)
    );

    assign m_axis_output_tlast = fc_valid;
    assign processed_data = output_data_array[OUTPUT_SELECT];
    assign valid_out = fc_valid;
    assign done = process_done;
    assign axi_valid_out = fc_valid;
    assign debug_out = {pipeline_error, weight_error, mem_timeout_error, fc_valid, pool_valid, act_valid, conv_valid, conv.kernel_loaded};

endmodule