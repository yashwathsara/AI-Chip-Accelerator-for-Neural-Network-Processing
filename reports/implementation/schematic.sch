# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 TLS
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new ai_accelerator_top work:ai_accelerator_top:NOFILE -nosplit
load symbol activation_function work:activation_function:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin lopt output.right pin m_axis_tvalid input.left pin sync_reset input.left pinBus D input.left [7:0] pinBus Q output.right [7:0] pinBus debug_out_OBUF output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFGCE hdi_primitives BUFIF1 pin O output pin CE input.top pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG_FABRIC hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol clock_gating_unit work:clock_gating_unit:NOFILE HIERBOX pin clk_IBUF input.left pin clk_IBUF_BUFG input.left pin clk_conv output.right pin clk_fc output.right pin clk_pool output.right pin en_conv0 input.left pin en_fc0 input.left pin en_pool0 input.left pin sync_reset input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol convolution_engine work:convolution_engine:NOFILE HIERBOX pin CLK input.left pin kernel_loaded output.right pin kernel_reg[1][13][0]_0 input.left pin kernel_reg[2][1][0]_0 input.left pin preproc_valid input.left pin s_axis_tlast input.left pin s_kernel_tvalid_IBUF input.left pin sum[7]_i_125419_0 input.left pin sum[7]_i_126437_0 input.left pin sum[7]_i_133978_0 input.left pin sum[7]_i_148_0 input.left pin sum[7]_i_18004_0 input.left pin sum[7]_i_18_0 input.left pin sum[7]_i_29961_0 input.left pin sum[7]_i_54244_0 input.left pin sum[7]_i_61508_0 input.left pin sum[7]_i_65429_0 input.left pin sum_reg[0]_0 input.left pin sum_reg[0]_1 input.left pin sum_reg[0]_2 input.left pin sum_reg[7]_i_47992_0 input.left pin sum_reg[7]_i_49094_0 input.left pin sync_reset input.left pinBus D output.right [7:0] pinBus Q input.left [3:0] pinBus activated_data_reg[5] input.left [1:0] pinBus kernel_reg[1][13][0]_1 input.left [3:0] pinBus out input.left [0:0] pinBus out0 output.right [1:0] pinBus padded_image[1][8][56][7]_i_4_0 input.left [3:0] pinBus padded_image_reg[2][1][4][7]_0 input.left [23:0] pinBus s_kernel_tdata_IBUF input.left [599:0] pinBus stage_valid input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol dataflow_controller work:dataflow_controller:NOFILE HIERBOX pin I8 input.left pin clk_IBUF_BUFG input.left pin en_conv0 output.right pin en_fc0 output.right pin en_pool0 output.right pin m_axis_output_tready_IBUF input.left pin process_done output.right pin store_complete input.left pin sync_reset input.left pinBus D input.left [0:0] pinBus FSM_onehot_state_reg[0]_0 output.right [0:0] pinBus Q input.left [0:0] pinBus debug_out_OBUF input.left [2:0] pinBus stage_valid input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol axi_dma_bridge work:axi_dma_bridge:NOFILE HIERBOX pin FSM_onehot_state_reg[0]_0 input.left pin clk_IBUF_BUFG input.left pin m_axi_arready_IBUF input.left pin m_axi_awready_IBUF input.left pin s_axi_awvalid_IBUF input.left pin s_axi_wvalid_IBUF input.left pin sync_reset input.left pinBus E input.left [0:0] pinBus Q output.right [4:0] pinBus debug_out_OBUF output.right [0:0] pinBus m_axi_awlen_OBUF output.right [7:0] pinBus rd_addr_reg_reg[31]_0 output.right [31:0] pinBus rd_addr_reg_reg[7]_0 output.right [5:0] pinBus s_axi_araddr_IBUF input.left [4:0] pinBus s_axi_awaddr_IBUF input.left [4:0] pinBus s_axi_rdata[1] input.left [1:0] pinBus s_axi_rdata[31] input.left [25:0] pinBus s_axi_rdata_OBUF output.right [25:0] pinBus s_axi_wdata_IBUF input.left [31:0] pinBus wr_addr_reg_reg[31]_0 output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol fc_layer work:fc_layer:NOFILE HIERBOX pin CLK input.left pin sync_reset input.left pinBus FSM_sequential_state_reg[1]_inv_0 input.left [0:0] pinBus Q output.right [7:0] pinBus debug_out_OBUF output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol interrupt_controller work:interrupt_controller:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin s_axi_arvalid_IBUF input.left pin s_axi_awvalid_IBUF input.left pin s_axi_bvalid_irq output.right pin s_axi_wvalid_IBUF input.left pin sync_reset input.left pinBus D input.left [7:0] pinBus Q input.left [5:0] pinBus debug_out_OBUF input.left [6:0] pinBus irq_in_d_reg[0]_0 input.left [0:0] pinBus s_axi_araddr_IBUF input.left [7:0] pinBus s_axi_awaddr_IBUF input.left [7:0] pinBus s_axi_rdata output.right [1:0] pinBus s_axi_rdata[7] input.left [5:0] pinBus s_axi_rdata_OBUF output.right [5:0] pinBus s_axi_wstrb_IBUF input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol weight_loader work:weight_loader:NOFILE HIERBOX pin FSM_onehot_state_reg[1]_0 output.right pin clk_IBUF_BUFG input.left pin lopt output.right pin m_axi_rvalid_IBUF input.left pin m_axi_wready_IBUF input.left pin sync_reset input.left pinBus E output.right [0:0] pinBus Q input.left [7:0] pinBus beat_cnt_reg[15] input.left [2:0] pinBus cfg_addr_reg_reg[0]_0 input.left [0:0] pinBus cfg_length_reg_reg[15]_0 input.left [15:0] pinBus debug_out_OBUF output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol performance_monitor work:performance_monitor:NOFILE HIERBOX pin busy input.left pin clk_IBUF_BUFG input.left pin sync_reset input.left pinBus D output.right [31:0] pinBus Q input.left [31:0] pinBus s_axi_araddr_IBUF input.left [3:0] pinBus s_axi_rdata_reg[31]_i_4_0 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_1 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_10 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_11 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_2 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_3 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_4 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_5 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_6 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_7 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_8 input.left [31:0] pinBus s_axi_rdata_reg[31]_i_4_9 input.left [31:0] pinBus s_axi_rdata_reg_reg[31] input.left [31:0] pinBus s_axi_rdata_reg_reg[31]_0 input.left [31:0] pinBus s_axi_rdata_reg_reg[31]_1 input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pipeline_controller work:pipeline_controller:NOFILE HIERBOX pin I8 output.right pin clk_IBUF_BUFG input.left pin error_OBUF output.right pin m_axis_output_tready_IBUF input.left pin store_complete output.right pin sync_reset input.left pinBus E input.left [0:0] pinBus Q input.left [0:0] pinBus SR input.left [0:0] pinBus debug_out_OBUF output.right [0:0] pinBus error input.left [1:0] pinBus out output.right [3:0] pinBus out_data output.right [23:0] pinBus process_done_reg input.left [0:0] pinBus stage_data_reg[0][23]_0 input.left [23:0] pinBus stage_valid_reg[0]_0 input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol pooling_unit work:pooling_unit:NOFILE HIERBOX pin CLK input.left pin lopt output.right pin sync_reset input.left pinBus Q input.left [7:0] pinBus debug_out_OBUF input.left [0:0] pinBus valid_reg_reg_0 output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol image_preprocessing work:image_preprocessing:NOFILE HIERBOX pin busy output.right pin clk_IBUF_BUFG input.left pin rst_n_IBUF input.left pin s_axis_input_tready_OBUF output.right pin s_axis_input_tvalid_IBUF input.left pin sync_reset input.left pinBus E output.right [0:0] pinBus Q input.left [0:0] pinBus SR output.right [0:0] pinBus debug_out_OBUF input.left [3:0] pinBus m_axis_tdata output.right [23:0] pinBus out input.left [0:0] pinBus s_axis_input_tdata_IBUF input.left [23:0] pinBus valid_reg_reg_0 output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol design_ps_wizard work_1:design_ps_wizard:design_ps_wizard_0.edf HIERBOX boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol clock_reset_manager work:clock_reset_manager:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin rst_n_IBUF input.left pin sync_reset output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load port axi_valid_out output -pg 1 -lvl 16 -x 9060 -y 58120
load port clk input -pg 1 -lvl 0 -x 0 -y 57030
load port done output -pg 1 -lvl 16 -x 9060 -y 58050
load port error output -pg 1 -lvl 16 -x 9060 -y 57140
load port m_axi_arready input -pg 1 -lvl 0 -x 0 -y 55680
load port m_axi_arvalid output -pg 1 -lvl 16 -x 9060 -y 58890
load port m_axi_awready input -pg 1 -lvl 0 -x 0 -y 55710
load port m_axi_awvalid output -pg 1 -lvl 16 -x 9060 -y 59520
load port m_axi_rready output -pg 1 -lvl 16 -x 9060 -y 59590
load port m_axi_rvalid input -pg 1 -lvl 0 -x 0 -y 56160
load port m_axi_wready input -pg 1 -lvl 0 -x 0 -y 56190
load port m_axi_wvalid output -pg 1 -lvl 16 -x 9060 -y 59660
load port m_axis_output_tlast output -pg 1 -lvl 16 -x 9060 -y 58190
load port m_axis_output_tready input -pg 1 -lvl 0 -x 0 -y 57330
load port m_axis_output_tvalid output -pg 1 -lvl 16 -x 9060 -y 57420
load port rst_n input -pg 1 -lvl 0 -x 0 -y 56890
load port s_axi_arready output -pg 1 -lvl 16 -x 9060 -y 61480
load port s_axi_arvalid input -pg 1 -lvl 0 -x 0 -y 56940
load port s_axi_awready output -pg 1 -lvl 16 -x 9060 -y 57280
load port s_axi_awvalid input -pg 1 -lvl 0 -x 0 -y 55160
load port s_axi_bready input -pg 1 -lvl 0 -x 0 -y 56530
load port s_axi_bvalid output -pg 1 -lvl 16 -x 9060 -y 55810
load port s_axi_rready input -pg 1 -lvl 0 -x 0 -y 75750
load port s_axi_rvalid output -pg 1 -lvl 16 -x 9060 -y 61550
load port s_axi_wready output -pg 1 -lvl 16 -x 9060 -y 57350
load port s_axi_wvalid input -pg 1 -lvl 0 -x 0 -y 55090
load port s_axis_input_tlast input -pg 1 -lvl 0 -x 0 -y 56970
load port s_axis_input_tready output -pg 1 -lvl 16 -x 9060 -y 60360
load port s_axis_input_tvalid input -pg 1 -lvl 0 -x 0 -y 57170
load port s_kernel_tready output -pg 1 -lvl 16 -x 9060 -y 57210
load port s_kernel_tvalid input -pg 1 -lvl 0 -x 0 -y 57000
load port valid_out output -pg 1 -lvl 16 -x 9060 -y 58260
load portBus debug_out output [7:0] -attr @name debug_out[7:0] -pg 1 -lvl 16 -x 9060 -y 56230
load portBus m_axi_araddr output [31:0] -attr @name m_axi_araddr[31:0] -pg 1 -lvl 16 -x 9060 -y 51890
load portBus m_axi_arlen output [7:0] -attr @name m_axi_arlen[7:0] -pg 1 -lvl 16 -x 9060 -y 58330
load portBus m_axi_awaddr output [31:0] -attr @name m_axi_awaddr[31:0] -pg 1 -lvl 16 -x 9060 -y 49510
load portBus m_axi_awlen output [7:0] -attr @name m_axi_awlen[7:0] -pg 1 -lvl 16 -x 9060 -y 58960
load portBus m_axi_rdata input [7:0] -attr @name m_axi_rdata[7:0] -pg 1 -lvl 0 -x 0 -y 20
load portBus m_axi_wdata output [7:0] -attr @name m_axi_wdata[7:0] -pg 1 -lvl 16 -x 9060 -y 19320
load portBus m_axis_output_tdata output [23:0] -attr @name m_axis_output_tdata[23:0] -pg 1 -lvl 16 -x 9060 -y 59730
load portBus processed_data output [7:0] -attr @name processed_data[7:0] -pg 1 -lvl 16 -x 9060 -y 57490
load portBus s_axi_araddr input [31:0] -attr @name s_axi_araddr[31:0] -pg 1 -lvl 0 -x 0 -y 64790
load portBus s_axi_awaddr input [31:0] -attr @name s_axi_awaddr[31:0] -pg 1 -lvl 0 -x 0 -y 57370
load portBus s_axi_bresp output [1:0] -attr @name s_axi_bresp[1:0] -pg 1 -lvl 16 -x 9060 -y 55320
load portBus s_axi_rdata output [31:0] -attr @name s_axi_rdata[31:0] -pg 1 -lvl 16 -x 9060 -y 55350
load portBus s_axi_rresp output [1:0] -attr @name s_axi_rresp[1:0] -pg 1 -lvl 16 -x 9060 -y 51750
load portBus s_axi_wdata input [31:0] -attr @name s_axi_wdata[31:0] -pg 1 -lvl 0 -x 0 -y 65610
load portBus s_axi_wstrb input [3:0] -attr @name s_axi_wstrb[3:0] -pg 1 -lvl 0 -x 0 -y 64830
load portBus s_axis_input_tdata input [23:0] -attr @name s_axis_input_tdata[23:0] -pg 1 -lvl 0 -x 0 -y 56650
load portBus s_kernel_tdata input [599:0] -attr @name s_kernel_tdata[599:0] -pg 1 -lvl 0 -x 0 -y 50
load inst act_fn activation_function work:activation_function:NOFILE -autohide -attr @cell(#000000) activation_function -pinBusAttr D @name D[7:0] -pinBusAttr D @attr n/c -pinBusAttr Q @name Q[7:0] -pinBusAttr Q @attr n/c -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pg 1 -lvl 8 -x 4700 -y 56980
load inst axi_valid_out_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58120
load inst clk_IBUF_BUFG_inst BUFGCE hdi_primitives -attr @cell(#000000) BUFGCE -pg 1 -lvl 2 -x 400 -y 56820
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57030
load inst clk_conv_BUFG_inst BUFG_FABRIC hdi_primitives -attr @cell(#000000) BUFG_FABRIC -pg 1 -lvl 5 -x 2520 -y 57030
load inst clk_fc_BUFG_inst BUFG_FABRIC hdi_primitives -attr @cell(#000000) BUFG_FABRIC -pg 1 -lvl 13 -x 7700 -y 57490
load inst clk_gate clock_gating_unit work:clock_gating_unit:NOFILE -autohide -attr @cell(#000000) clock_gating_unit -pg 1 -lvl 12 -x 7280 -y 57180
load inst clk_pool_BUFG_inst BUFG_FABRIC hdi_primitives -attr @cell(#000000) BUFG_FABRIC -pg 1 -lvl 13 -x 7700 -y 56810
load inst conv convolution_engine work:convolution_engine:NOFILE -autohide -attr @cell(#000000) convolution_engine -pinAttr kernel_reg[1][13][0]_0 @attr n/c -pinAttr kernel_reg[2][1][0]_0 @attr n/c -pinAttr sum[7]_i_125419_0 @attr n/c -pinAttr sum[7]_i_126437_0 @attr n/c -pinAttr sum[7]_i_133978_0 @attr n/c -pinAttr sum[7]_i_148_0 @attr n/c -pinAttr sum[7]_i_18004_0 @attr n/c -pinAttr sum[7]_i_18_0 @attr n/c -pinAttr sum[7]_i_29961_0 @attr n/c -pinAttr sum[7]_i_54244_0 @attr n/c -pinAttr sum[7]_i_61508_0 @attr n/c -pinAttr sum[7]_i_65429_0 @attr n/c -pinAttr sum_reg[0]_0 @attr n/c -pinAttr sum_reg[0]_1 @attr n/c -pinAttr sum_reg[0]_2 @attr n/c -pinAttr sum_reg[7]_i_47992_0 @attr n/c -pinAttr sum_reg[7]_i_49094_0 @attr n/c -pinBusAttr D @name D[7:0] -pinBusAttr D @attr n/c -pinBusAttr Q @name Q[3:0] -pinBusAttr activated_data_reg[5] @name activated_data_reg[5][1:0] -pinBusAttr activated_data_reg[5] @attr n/c -pinBusAttr kernel_reg[1][13][0]_1 @name kernel_reg[1][13][0]_1[3:0] -pinBusAttr out @name out -pinBusAttr out0 @name out0[1:0] -pinBusAttr padded_image[1][8][56][7]_i_4_0 @name padded_image[1][8][56][7]_i_4_0[3:0] -pinBusAttr padded_image_reg[2][1][4][7]_0 @name padded_image_reg[2][1][4][7]_0[23:0] -pinBusAttr padded_image_reg[2][1][4][7]_0 @attr n/c -pinBusAttr s_kernel_tdata_IBUF @name s_kernel_tdata_IBUF[599:0] -pinBusAttr s_kernel_tdata_IBUF @attr n/c -pinBusAttr stage_valid @name stage_valid -pinBusAttr stage_valid @attr n/c -pg 1 -lvl 6 -x 3190 -y 57040
load inst dataflow dataflow_controller work:dataflow_controller:NOFILE -autohide -attr @cell(#000000) dataflow_controller -pinBusAttr D @name D -pinBusAttr FSM_onehot_state_reg[0]_0 @name FSM_onehot_state_reg[0]_0 -pinBusAttr Q @name Q -pinBusAttr debug_out_OBUF @name debug_out_OBUF[2:0] -pinBusAttr stage_valid @name stage_valid -pg 1 -lvl 11 -x 6650 -y 56800
load inst debug_out_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56230
load inst debug_out_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56650
load inst debug_out_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56720
load inst debug_out_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56790
load inst debug_out_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56860
load inst debug_out_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56930
load inst debug_out_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57000
load inst debug_out_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57070
load inst dma_bridge axi_dma_bridge work:axi_dma_bridge:NOFILE -autohide -attr @cell(#000000) axi_dma_bridge -pinBusAttr E @name E -pinBusAttr Q @name Q[4:0] -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pinBusAttr m_axi_awlen_OBUF @name m_axi_awlen_OBUF[7:0] -pinBusAttr rd_addr_reg_reg[31]_0 @name rd_addr_reg_reg[31]_0[31:0] -pinBusAttr rd_addr_reg_reg[7]_0 @name rd_addr_reg_reg[7]_0[5:0] -pinBusAttr s_axi_araddr_IBUF @name s_axi_araddr_IBUF[4:0] -pinBusAttr s_axi_awaddr_IBUF @name s_axi_awaddr_IBUF[4:0] -pinBusAttr s_axi_rdata[1] @name s_axi_rdata[1][1:0] -pinBusAttr s_axi_rdata[31] @name s_axi_rdata[31][25:0] -pinBusAttr s_axi_rdata_OBUF @name s_axi_rdata_OBUF[25:0] -pinBusAttr s_axi_wdata_IBUF @name s_axi_wdata_IBUF[31:0] -pinBusAttr wr_addr_reg_reg[31]_0 @name wr_addr_reg_reg[31]_0[31:0] -pg 1 -lvl 8 -x 4700 -y 55720
load inst done_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58050
load inst error_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57140
load inst fc fc_layer work:fc_layer:NOFILE -autohide -attr @cell(#000000) fc_layer -pinBusAttr FSM_sequential_state_reg[1]_inv_0 @name FSM_sequential_state_reg[1]_inv_0 -pinBusAttr Q @name Q[7:0] -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pg 1 -lvl 14 -x 8220 -y 57480
load inst irq_ctrl interrupt_controller work:interrupt_controller:NOFILE -autohide -attr @cell(#000000) interrupt_controller -pinBusAttr D @name D[7:0] -pinBusAttr Q @name Q[5:0] -pinBusAttr debug_out_OBUF @name debug_out_OBUF[6:0] -pinBusAttr irq_in_d_reg[0]_0 @name irq_in_d_reg[0]_0 -pinBusAttr s_axi_araddr_IBUF @name s_axi_araddr_IBUF[7:0] -pinBusAttr s_axi_awaddr_IBUF @name s_axi_awaddr_IBUF[7:0] -pinBusAttr s_axi_rdata @name s_axi_rdata[1:0] -pinBusAttr s_axi_rdata[7] @name s_axi_rdata[7][5:0] -pinBusAttr s_axi_rdata_OBUF @name s_axi_rdata_OBUF[5:0] -pinBusAttr s_axi_wstrb_IBUF @name s_axi_wstrb_IBUF -pg 1 -lvl 7 -x 3960 -y 56340
load inst loader weight_loader work:weight_loader:NOFILE -autohide -attr @cell(#000000) weight_loader -pinBusAttr E @name E -pinBusAttr Q @name Q[7:0] -pinBusAttr beat_cnt_reg[15] @name beat_cnt_reg[15][2:0] -pinBusAttr cfg_addr_reg_reg[0]_0 @name cfg_addr_reg_reg[0]_0 -pinBusAttr cfg_length_reg_reg[15]_0 @name cfg_length_reg_reg[15]_0[15:0] -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pg 1 -lvl 7 -x 3960 -y 55850
load inst m_axi_araddr_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51890
load inst m_axi_araddr_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52590
load inst m_axi_araddr_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52660
load inst m_axi_araddr_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52730
load inst m_axi_araddr_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52800
load inst m_axi_araddr_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52870
load inst m_axi_araddr_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52940
load inst m_axi_araddr_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53010
load inst m_axi_araddr_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53080
load inst m_axi_araddr_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53150
load inst m_axi_araddr_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53220
load inst m_axi_araddr_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51960
load inst m_axi_araddr_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53290
load inst m_axi_araddr_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53360
load inst m_axi_araddr_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53430
load inst m_axi_araddr_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53500
load inst m_axi_araddr_OBUF[24]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53570
load inst m_axi_araddr_OBUF[25]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53640
load inst m_axi_araddr_OBUF[26]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53710
load inst m_axi_araddr_OBUF[27]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53780
load inst m_axi_araddr_OBUF[28]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53850
load inst m_axi_araddr_OBUF[29]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53920
load inst m_axi_araddr_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52030
load inst m_axi_araddr_OBUF[30]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 53990
load inst m_axi_araddr_OBUF[31]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54060
load inst m_axi_araddr_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52100
load inst m_axi_araddr_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52170
load inst m_axi_araddr_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52240
load inst m_axi_araddr_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52310
load inst m_axi_araddr_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52380
load inst m_axi_araddr_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52450
load inst m_axi_araddr_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 52520
load inst m_axi_arlen_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58330
load inst m_axi_arlen_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58400
load inst m_axi_arlen_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58470
load inst m_axi_arlen_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58540
load inst m_axi_arlen_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58610
load inst m_axi_arlen_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58680
load inst m_axi_arlen_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58750
load inst m_axi_arlen_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58820
load inst m_axi_arready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 7 -x 3960 -y 55680
load inst m_axi_arvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58890
load inst m_axi_awaddr_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49510
load inst m_axi_awaddr_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50210
load inst m_axi_awaddr_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50280
load inst m_axi_awaddr_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50350
load inst m_axi_awaddr_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50420
load inst m_axi_awaddr_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50490
load inst m_axi_awaddr_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50560
load inst m_axi_awaddr_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50630
load inst m_axi_awaddr_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50700
load inst m_axi_awaddr_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50770
load inst m_axi_awaddr_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50840
load inst m_axi_awaddr_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49580
load inst m_axi_awaddr_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50910
load inst m_axi_awaddr_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50980
load inst m_axi_awaddr_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51050
load inst m_axi_awaddr_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51120
load inst m_axi_awaddr_OBUF[24]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51190
load inst m_axi_awaddr_OBUF[25]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51260
load inst m_axi_awaddr_OBUF[26]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51330
load inst m_axi_awaddr_OBUF[27]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51400
load inst m_axi_awaddr_OBUF[28]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51470
load inst m_axi_awaddr_OBUF[29]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51540
load inst m_axi_awaddr_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49650
load inst m_axi_awaddr_OBUF[30]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51610
load inst m_axi_awaddr_OBUF[31]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51680
load inst m_axi_awaddr_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49720
load inst m_axi_awaddr_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49790
load inst m_axi_awaddr_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49860
load inst m_axi_awaddr_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 49930
load inst m_axi_awaddr_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50000
load inst m_axi_awaddr_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50070
load inst m_axi_awaddr_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 50140
load inst m_axi_awlen_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58960
load inst m_axi_awlen_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59030
load inst m_axi_awlen_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59100
load inst m_axi_awlen_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59170
load inst m_axi_awlen_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59240
load inst m_axi_awlen_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59310
load inst m_axi_awlen_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59380
load inst m_axi_awlen_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59450
load inst m_axi_awready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 7 -x 3960 -y 55750
load inst m_axi_awvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59520
load inst m_axi_rready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59590
load inst m_axi_rvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 3190 -y 55940
load inst m_axi_wdata_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19320
load inst m_axi_wdata_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19390
load inst m_axi_wdata_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19460
load inst m_axi_wdata_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19530
load inst m_axi_wdata_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19600
load inst m_axi_wdata_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19670
load inst m_axi_wdata_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19740
load inst m_axi_wdata_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 19810
load inst m_axi_wready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 3190 -y 56010
load inst m_axi_wvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59660
load inst m_axis_output_tdata_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59730
load inst m_axis_output_tdata_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60500
load inst m_axis_output_tdata_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60570
load inst m_axis_output_tdata_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60640
load inst m_axis_output_tdata_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60710
load inst m_axis_output_tdata_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60780
load inst m_axis_output_tdata_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60850
load inst m_axis_output_tdata_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60920
load inst m_axis_output_tdata_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60990
load inst m_axis_output_tdata_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61060
load inst m_axis_output_tdata_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61130
load inst m_axis_output_tdata_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59800
load inst m_axis_output_tdata_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61200
load inst m_axis_output_tdata_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61270
load inst m_axis_output_tdata_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61340
load inst m_axis_output_tdata_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61410
load inst m_axis_output_tdata_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59870
load inst m_axis_output_tdata_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 59940
load inst m_axis_output_tdata_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60010
load inst m_axis_output_tdata_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60080
load inst m_axis_output_tdata_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60150
load inst m_axis_output_tdata_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60220
load inst m_axis_output_tdata_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60290
load inst m_axis_output_tdata_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60430
load inst m_axis_output_tlast_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58190
load inst m_axis_output_tready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 9 -x 5380 -y 57420
load inst m_axis_output_tvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57420
load inst perf performance_monitor work:performance_monitor:NOFILE -autohide -attr @cell(#000000) performance_monitor -pinBusAttr D @name D[31:0] -pinBusAttr Q @name Q[31:0] -pinBusAttr s_axi_araddr_IBUF @name s_axi_araddr_IBUF[3:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_0 @name s_axi_rdata_reg[31]_i_4_0[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_1 @name s_axi_rdata_reg[31]_i_4_1[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_10 @name s_axi_rdata_reg[31]_i_4_10[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_11 @name s_axi_rdata_reg[31]_i_4_11[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_2 @name s_axi_rdata_reg[31]_i_4_2[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_3 @name s_axi_rdata_reg[31]_i_4_3[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_4 @name s_axi_rdata_reg[31]_i_4_4[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_5 @name s_axi_rdata_reg[31]_i_4_5[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_6 @name s_axi_rdata_reg[31]_i_4_6[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_7 @name s_axi_rdata_reg[31]_i_4_7[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_8 @name s_axi_rdata_reg[31]_i_4_8[31:0] -pinBusAttr s_axi_rdata_reg[31]_i_4_9 @name s_axi_rdata_reg[31]_i_4_9[31:0] -pinBusAttr s_axi_rdata_reg_reg[31] @name s_axi_rdata_reg_reg[31][31:0] -pinBusAttr s_axi_rdata_reg_reg[31]_0 @name s_axi_rdata_reg_reg[31]_0[31:0] -pinBusAttr s_axi_rdata_reg_reg[31]_1 @name s_axi_rdata_reg_reg[31]_1[31:0] -pg 1 -lvl 5 -x 2520 -y 53110
load inst pipe_ctrl pipeline_controller work:pipeline_controller:NOFILE -autohide -attr @cell(#000000) pipeline_controller -pinBusAttr E @name E -pinBusAttr Q @name Q -pinBusAttr SR @name SR -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pinBusAttr error @name error[1:0] -pinBusAttr out @name out[3:0] -pinBusAttr out_data @name out_data[23:0] -pinBusAttr process_done_reg @name process_done_reg -pinBusAttr stage_data_reg[0][23]_0 @name stage_data_reg[0][23]_0[23:0] -pinBusAttr stage_valid_reg[0]_0 @name stage_valid_reg[0]_0 -pg 1 -lvl 10 -x 6040 -y 56720
load inst pool pooling_unit work:pooling_unit:NOFILE -autohide -attr @cell(#000000) pooling_unit -pinBusAttr Q @name Q[7:0] -pinBusAttr Q @attr n/c -pinBusAttr debug_out_OBUF @name debug_out_OBUF -pinBusAttr valid_reg_reg_0 @name valid_reg_reg_0 -pg 1 -lvl 14 -x 8220 -y 56800
load inst preproc image_preprocessing work:image_preprocessing:NOFILE -autohide -attr @cell(#000000) image_preprocessing -pinBusAttr E @name E -pinBusAttr Q @name Q -pinBusAttr SR @name SR -pinBusAttr debug_out_OBUF @name debug_out_OBUF[3:0] -pinBusAttr m_axis_tdata @name m_axis_tdata[23:0] -pinBusAttr out @name out -pinBusAttr s_axis_input_tdata_IBUF @name s_axis_input_tdata_IBUF[23:0] -pinBusAttr valid_reg_reg_0 @name valid_reg_reg_0 -pg 1 -lvl 9 -x 5380 -y 56720
load inst processed_data_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57490
load inst processed_data_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57560
load inst processed_data_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57630
load inst processed_data_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57700
load inst processed_data_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57770
load inst processed_data_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57840
load inst processed_data_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57910
load inst processed_data_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57980
load inst ps_wizard design_ps_wizard work_1:design_ps_wizard:design_ps_wizard_0.edf -autohide -attr @cell(#000000) design_ps_wizard -pg 1 -lvl 10 -x 6040 -y 43820
load inst reg_file[0][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 63900
load inst reg_file[0][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64030
load inst reg_file[0][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64420
load inst reg_file[0][31]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 400 -y 55020
load inst reg_file[0][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 63770
load inst reg_file[10][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 28840
load inst reg_file[10][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 30040
load inst reg_file[10][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 31240
load inst reg_file[10][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 28690
load inst reg_file[11][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 15640
load inst reg_file[11][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 16840
load inst reg_file[11][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 18040
load inst reg_file[11][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 14440
load inst reg_file[12][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 49240
load inst reg_file[12][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 50440
load inst reg_file[12][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 54040
load inst reg_file[12][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 48040
load inst reg_file[13][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 20440
load inst reg_file[13][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 21640
load inst reg_file[13][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 32440
load inst reg_file[13][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 19240
load inst reg_file[14][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 43240
load inst reg_file[14][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 44440
load inst reg_file[14][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 46840
load inst reg_file[14][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 42040
load inst reg_file[15][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 24040
load inst reg_file[15][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 25240
load inst reg_file[15][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 26440
load inst reg_file[15][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 22840
load inst reg_file[1][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 6220
load inst reg_file[1][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 6480
load inst reg_file[1][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 8720
load inst reg_file[1][31]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 400 -y 55190
load inst reg_file[1][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 5960
load inst reg_file[2][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 59470
load inst reg_file[2][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64160
load inst reg_file[2][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64290
load inst reg_file[2][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 58270
load inst reg_file[3][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 6350
load inst reg_file[3][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 6610
load inst reg_file[3][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 8850
load inst reg_file[3][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 6090
load inst reg_file[4][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 65080
load inst reg_file[4][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 65210
load inst reg_file[4][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 65340
load inst reg_file[4][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64680
load inst reg_file[5][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 34840
load inst reg_file[5][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 36040
load inst reg_file[5][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 45640
load inst reg_file[5][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 33640
load inst reg_file[6][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64820
load inst reg_file[6][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64950
load inst reg_file[6][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 65470
load inst reg_file[6][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 64550
load inst reg_file[7][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 38440
load inst reg_file[7][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 39640
load inst reg_file[7][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 40840
load inst reg_file[7][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 37240
load inst reg_file[8][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 52840
load inst reg_file[8][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 55740
load inst reg_file[8][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 57060
load inst reg_file[8][31]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 400 -y 55360
load inst reg_file[8][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 51640
load inst reg_file[9][15]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 11090
load inst reg_file[9][23]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 12040
load inst reg_file[9][31]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 13240
load inst reg_file[9][31]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 400 -y 55530
load inst reg_file[9][7]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 920 -y 10960
load inst reg_file_reg[0][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66520
load inst reg_file_reg[0][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68020
load inst reg_file_reg[0][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68170
load inst reg_file_reg[0][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68320
load inst reg_file_reg[0][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68470
load inst reg_file_reg[0][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68620
load inst reg_file_reg[0][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68770
load inst reg_file_reg[0][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 68920
load inst reg_file_reg[0][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69070
load inst reg_file_reg[0][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69220
load inst reg_file_reg[0][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69370
load inst reg_file_reg[0][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66670
load inst reg_file_reg[0][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69520
load inst reg_file_reg[0][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69670
load inst reg_file_reg[0][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69820
load inst reg_file_reg[0][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 69970
load inst reg_file_reg[0][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70120
load inst reg_file_reg[0][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70270
load inst reg_file_reg[0][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70420
load inst reg_file_reg[0][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70570
load inst reg_file_reg[0][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70720
load inst reg_file_reg[0][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 70870
load inst reg_file_reg[0][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66820
load inst reg_file_reg[0][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71020
load inst reg_file_reg[0][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71170
load inst reg_file_reg[0][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66970
load inst reg_file_reg[0][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67120
load inst reg_file_reg[0][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67270
load inst reg_file_reg[0][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67420
load inst reg_file_reg[0][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67570
load inst reg_file_reg[0][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67720
load inst reg_file_reg[0][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 67870
load inst reg_file_reg[10][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27680
load inst reg_file_reg[10][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29180
load inst reg_file_reg[10][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29330
load inst reg_file_reg[10][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29480
load inst reg_file_reg[10][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29630
load inst reg_file_reg[10][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29780
load inst reg_file_reg[10][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29930
load inst reg_file_reg[10][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30080
load inst reg_file_reg[10][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30230
load inst reg_file_reg[10][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30380
load inst reg_file_reg[10][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30530
load inst reg_file_reg[10][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27830
load inst reg_file_reg[10][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30680
load inst reg_file_reg[10][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30830
load inst reg_file_reg[10][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 30980
load inst reg_file_reg[10][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31130
load inst reg_file_reg[10][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31280
load inst reg_file_reg[10][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31430
load inst reg_file_reg[10][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31580
load inst reg_file_reg[10][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31730
load inst reg_file_reg[10][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 31880
load inst reg_file_reg[10][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32030
load inst reg_file_reg[10][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27980
load inst reg_file_reg[10][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32180
load inst reg_file_reg[10][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32330
load inst reg_file_reg[10][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28130
load inst reg_file_reg[10][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28280
load inst reg_file_reg[10][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28430
load inst reg_file_reg[10][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28580
load inst reg_file_reg[10][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28730
load inst reg_file_reg[10][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 28880
load inst reg_file_reg[10][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 29030
load inst reg_file_reg[11][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14480
load inst reg_file_reg[11][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15980
load inst reg_file_reg[11][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16130
load inst reg_file_reg[11][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16280
load inst reg_file_reg[11][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16430
load inst reg_file_reg[11][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16580
load inst reg_file_reg[11][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16730
load inst reg_file_reg[11][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 16880
load inst reg_file_reg[11][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17030
load inst reg_file_reg[11][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17180
load inst reg_file_reg[11][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17330
load inst reg_file_reg[11][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14630
load inst reg_file_reg[11][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17480
load inst reg_file_reg[11][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17630
load inst reg_file_reg[11][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17780
load inst reg_file_reg[11][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 17930
load inst reg_file_reg[11][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18080
load inst reg_file_reg[11][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18230
load inst reg_file_reg[11][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18380
load inst reg_file_reg[11][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18530
load inst reg_file_reg[11][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18680
load inst reg_file_reg[11][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18830
load inst reg_file_reg[11][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14780
load inst reg_file_reg[11][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 18980
load inst reg_file_reg[11][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19130
load inst reg_file_reg[11][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14930
load inst reg_file_reg[11][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15080
load inst reg_file_reg[11][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15230
load inst reg_file_reg[11][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15380
load inst reg_file_reg[11][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15530
load inst reg_file_reg[11][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15680
load inst reg_file_reg[11][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 15830
load inst reg_file_reg[12][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48080
load inst reg_file_reg[12][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49580
load inst reg_file_reg[12][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49730
load inst reg_file_reg[12][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49880
load inst reg_file_reg[12][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50030
load inst reg_file_reg[12][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50180
load inst reg_file_reg[12][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50330
load inst reg_file_reg[12][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50480
load inst reg_file_reg[12][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50630
load inst reg_file_reg[12][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50780
load inst reg_file_reg[12][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 50930
load inst reg_file_reg[12][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48230
load inst reg_file_reg[12][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51080
load inst reg_file_reg[12][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51230
load inst reg_file_reg[12][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51380
load inst reg_file_reg[12][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51530
load inst reg_file_reg[12][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54080
load inst reg_file_reg[12][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54230
load inst reg_file_reg[12][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54380
load inst reg_file_reg[12][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54530
load inst reg_file_reg[12][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54680
load inst reg_file_reg[12][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54830
load inst reg_file_reg[12][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48380
load inst reg_file_reg[12][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 54980
load inst reg_file_reg[12][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55130
load inst reg_file_reg[12][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48530
load inst reg_file_reg[12][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48680
load inst reg_file_reg[12][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48830
load inst reg_file_reg[12][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 48980
load inst reg_file_reg[12][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49130
load inst reg_file_reg[12][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49280
load inst reg_file_reg[12][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 49430
load inst reg_file_reg[13][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19280
load inst reg_file_reg[13][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20780
load inst reg_file_reg[13][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20930
load inst reg_file_reg[13][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21080
load inst reg_file_reg[13][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21230
load inst reg_file_reg[13][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21380
load inst reg_file_reg[13][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21530
load inst reg_file_reg[13][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21680
load inst reg_file_reg[13][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21830
load inst reg_file_reg[13][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 21980
load inst reg_file_reg[13][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22130
load inst reg_file_reg[13][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19430
load inst reg_file_reg[13][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22280
load inst reg_file_reg[13][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22430
load inst reg_file_reg[13][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22580
load inst reg_file_reg[13][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22730
load inst reg_file_reg[13][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32480
load inst reg_file_reg[13][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32630
load inst reg_file_reg[13][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32780
load inst reg_file_reg[13][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 32930
load inst reg_file_reg[13][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33080
load inst reg_file_reg[13][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33230
load inst reg_file_reg[13][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19580
load inst reg_file_reg[13][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33380
load inst reg_file_reg[13][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33530
load inst reg_file_reg[13][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19730
load inst reg_file_reg[13][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 19880
load inst reg_file_reg[13][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20030
load inst reg_file_reg[13][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20180
load inst reg_file_reg[13][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20330
load inst reg_file_reg[13][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20480
load inst reg_file_reg[13][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 20630
load inst reg_file_reg[14][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42080
load inst reg_file_reg[14][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43580
load inst reg_file_reg[14][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43730
load inst reg_file_reg[14][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43880
load inst reg_file_reg[14][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44030
load inst reg_file_reg[14][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44180
load inst reg_file_reg[14][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44330
load inst reg_file_reg[14][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44480
load inst reg_file_reg[14][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44630
load inst reg_file_reg[14][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44780
load inst reg_file_reg[14][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 44930
load inst reg_file_reg[14][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42230
load inst reg_file_reg[14][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45080
load inst reg_file_reg[14][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45230
load inst reg_file_reg[14][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45380
load inst reg_file_reg[14][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45530
load inst reg_file_reg[14][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46880
load inst reg_file_reg[14][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47030
load inst reg_file_reg[14][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47180
load inst reg_file_reg[14][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47330
load inst reg_file_reg[14][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47480
load inst reg_file_reg[14][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47630
load inst reg_file_reg[14][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42380
load inst reg_file_reg[14][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47780
load inst reg_file_reg[14][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 47930
load inst reg_file_reg[14][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42530
load inst reg_file_reg[14][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42680
load inst reg_file_reg[14][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42830
load inst reg_file_reg[14][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 42980
load inst reg_file_reg[14][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43130
load inst reg_file_reg[14][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43280
load inst reg_file_reg[14][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 43430
load inst reg_file_reg[15][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 22880
load inst reg_file_reg[15][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24380
load inst reg_file_reg[15][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24530
load inst reg_file_reg[15][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24680
load inst reg_file_reg[15][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24830
load inst reg_file_reg[15][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24980
load inst reg_file_reg[15][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25130
load inst reg_file_reg[15][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25280
load inst reg_file_reg[15][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25430
load inst reg_file_reg[15][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25580
load inst reg_file_reg[15][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25730
load inst reg_file_reg[15][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23030
load inst reg_file_reg[15][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 25880
load inst reg_file_reg[15][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26030
load inst reg_file_reg[15][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26180
load inst reg_file_reg[15][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26330
load inst reg_file_reg[15][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26480
load inst reg_file_reg[15][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26630
load inst reg_file_reg[15][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26780
load inst reg_file_reg[15][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 26930
load inst reg_file_reg[15][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27080
load inst reg_file_reg[15][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27230
load inst reg_file_reg[15][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23180
load inst reg_file_reg[15][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27380
load inst reg_file_reg[15][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 27530
load inst reg_file_reg[15][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23330
load inst reg_file_reg[15][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23480
load inst reg_file_reg[15][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23630
load inst reg_file_reg[15][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23780
load inst reg_file_reg[15][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 23930
load inst reg_file_reg[15][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24080
load inst reg_file_reg[15][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 24230
load inst reg_file_reg[1][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 80
load inst reg_file_reg[1][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1580
load inst reg_file_reg[1][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1730
load inst reg_file_reg[1][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1880
load inst reg_file_reg[1][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2030
load inst reg_file_reg[1][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2180
load inst reg_file_reg[1][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2330
load inst reg_file_reg[1][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4880
load inst reg_file_reg[1][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5030
load inst reg_file_reg[1][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5180
load inst reg_file_reg[1][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5330
load inst reg_file_reg[1][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 230
load inst reg_file_reg[1][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5480
load inst reg_file_reg[1][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5630
load inst reg_file_reg[1][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5780
load inst reg_file_reg[1][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 5930
load inst reg_file_reg[1][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7280
load inst reg_file_reg[1][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7430
load inst reg_file_reg[1][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7580
load inst reg_file_reg[1][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7730
load inst reg_file_reg[1][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7880
load inst reg_file_reg[1][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8030
load inst reg_file_reg[1][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 380
load inst reg_file_reg[1][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8180
load inst reg_file_reg[1][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8330
load inst reg_file_reg[1][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 530
load inst reg_file_reg[1][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 680
load inst reg_file_reg[1][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 830
load inst reg_file_reg[1][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 980
load inst reg_file_reg[1][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1130
load inst reg_file_reg[1][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1280
load inst reg_file_reg[1][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 1430
load inst reg_file_reg[2][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58310
load inst reg_file_reg[2][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59810
load inst reg_file_reg[2][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59960
load inst reg_file_reg[2][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60110
load inst reg_file_reg[2][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60260
load inst reg_file_reg[2][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60410
load inst reg_file_reg[2][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60560
load inst reg_file_reg[2][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60710
load inst reg_file_reg[2][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 60860
load inst reg_file_reg[2][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 61570
load inst reg_file_reg[2][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 61720
load inst reg_file_reg[2][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58460
load inst reg_file_reg[2][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 61870
load inst reg_file_reg[2][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62020
load inst reg_file_reg[2][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62170
load inst reg_file_reg[2][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62320
load inst reg_file_reg[2][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62470
load inst reg_file_reg[2][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62620
load inst reg_file_reg[2][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62770
load inst reg_file_reg[2][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 62920
load inst reg_file_reg[2][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63070
load inst reg_file_reg[2][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63220
load inst reg_file_reg[2][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58610
load inst reg_file_reg[2][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63370
load inst reg_file_reg[2][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63520
load inst reg_file_reg[2][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58760
load inst reg_file_reg[2][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58910
load inst reg_file_reg[2][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59060
load inst reg_file_reg[2][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59210
load inst reg_file_reg[2][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59360
load inst reg_file_reg[2][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59510
load inst reg_file_reg[2][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 59660
load inst reg_file_reg[3][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2480
load inst reg_file_reg[3][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3980
load inst reg_file_reg[3][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4130
load inst reg_file_reg[3][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4280
load inst reg_file_reg[3][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4430
load inst reg_file_reg[3][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4580
load inst reg_file_reg[3][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 4730
load inst reg_file_reg[3][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6080
load inst reg_file_reg[3][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6230
load inst reg_file_reg[3][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6380
load inst reg_file_reg[3][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6530
load inst reg_file_reg[3][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2630
load inst reg_file_reg[3][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6680
load inst reg_file_reg[3][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6830
load inst reg_file_reg[3][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 6980
load inst reg_file_reg[3][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 7130
load inst reg_file_reg[3][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8480
load inst reg_file_reg[3][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8630
load inst reg_file_reg[3][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8780
load inst reg_file_reg[3][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 8930
load inst reg_file_reg[3][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9080
load inst reg_file_reg[3][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9230
load inst reg_file_reg[3][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2780
load inst reg_file_reg[3][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9380
load inst reg_file_reg[3][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9530
load inst reg_file_reg[3][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 2930
load inst reg_file_reg[3][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3080
load inst reg_file_reg[3][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3230
load inst reg_file_reg[3][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3380
load inst reg_file_reg[3][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3530
load inst reg_file_reg[3][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3680
load inst reg_file_reg[3][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 3830
load inst reg_file_reg[4][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63670
load inst reg_file_reg[4][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65170
load inst reg_file_reg[4][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65320
load inst reg_file_reg[4][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65470
load inst reg_file_reg[4][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65620
load inst reg_file_reg[4][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65770
load inst reg_file_reg[4][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65920
load inst reg_file_reg[4][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66070
load inst reg_file_reg[4][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66220
load inst reg_file_reg[4][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71320
load inst reg_file_reg[4][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71470
load inst reg_file_reg[4][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63820
load inst reg_file_reg[4][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71620
load inst reg_file_reg[4][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71770
load inst reg_file_reg[4][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 71920
load inst reg_file_reg[4][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72070
load inst reg_file_reg[4][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72220
load inst reg_file_reg[4][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72370
load inst reg_file_reg[4][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72520
load inst reg_file_reg[4][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72670
load inst reg_file_reg[4][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72820
load inst reg_file_reg[4][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 72970
load inst reg_file_reg[4][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 63970
load inst reg_file_reg[4][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73120
load inst reg_file_reg[4][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73270
load inst reg_file_reg[4][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64120
load inst reg_file_reg[4][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64270
load inst reg_file_reg[4][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64420
load inst reg_file_reg[4][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64570
load inst reg_file_reg[4][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64720
load inst reg_file_reg[4][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 64870
load inst reg_file_reg[4][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 65020
load inst reg_file_reg[5][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33680
load inst reg_file_reg[5][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35180
load inst reg_file_reg[5][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35330
load inst reg_file_reg[5][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35480
load inst reg_file_reg[5][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35630
load inst reg_file_reg[5][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35780
load inst reg_file_reg[5][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35930
load inst reg_file_reg[5][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36080
load inst reg_file_reg[5][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36230
load inst reg_file_reg[5][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36380
load inst reg_file_reg[5][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36530
load inst reg_file_reg[5][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33830
load inst reg_file_reg[5][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36680
load inst reg_file_reg[5][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36830
load inst reg_file_reg[5][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 36980
load inst reg_file_reg[5][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37130
load inst reg_file_reg[5][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45680
load inst reg_file_reg[5][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45830
load inst reg_file_reg[5][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 45980
load inst reg_file_reg[5][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46130
load inst reg_file_reg[5][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46280
load inst reg_file_reg[5][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46430
load inst reg_file_reg[5][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 33980
load inst reg_file_reg[5][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46580
load inst reg_file_reg[5][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 46730
load inst reg_file_reg[5][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34130
load inst reg_file_reg[5][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34280
load inst reg_file_reg[5][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34430
load inst reg_file_reg[5][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34580
load inst reg_file_reg[5][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34730
load inst reg_file_reg[5][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 34880
load inst reg_file_reg[5][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 35030
load inst reg_file_reg[6][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 66370
load inst reg_file_reg[6][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74770
load inst reg_file_reg[6][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74920
load inst reg_file_reg[6][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75070
load inst reg_file_reg[6][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75220
load inst reg_file_reg[6][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75370
load inst reg_file_reg[6][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75520
load inst reg_file_reg[6][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75670
load inst reg_file_reg[6][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75830
load inst reg_file_reg[6][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 75980
load inst reg_file_reg[6][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76130
load inst reg_file_reg[6][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73420
load inst reg_file_reg[6][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76280
load inst reg_file_reg[6][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76430
load inst reg_file_reg[6][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76580
load inst reg_file_reg[6][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76730
load inst reg_file_reg[6][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 76880
load inst reg_file_reg[6][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77030
load inst reg_file_reg[6][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77180
load inst reg_file_reg[6][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77330
load inst reg_file_reg[6][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77480
load inst reg_file_reg[6][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77630
load inst reg_file_reg[6][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73570
load inst reg_file_reg[6][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77780
load inst reg_file_reg[6][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 77930
load inst reg_file_reg[6][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73720
load inst reg_file_reg[6][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 73870
load inst reg_file_reg[6][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74020
load inst reg_file_reg[6][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74170
load inst reg_file_reg[6][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74320
load inst reg_file_reg[6][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74470
load inst reg_file_reg[6][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 74620
load inst reg_file_reg[7][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37280
load inst reg_file_reg[7][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38780
load inst reg_file_reg[7][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38930
load inst reg_file_reg[7][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39080
load inst reg_file_reg[7][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39230
load inst reg_file_reg[7][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39380
load inst reg_file_reg[7][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39530
load inst reg_file_reg[7][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39680
load inst reg_file_reg[7][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39830
load inst reg_file_reg[7][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 39980
load inst reg_file_reg[7][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40130
load inst reg_file_reg[7][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37430
load inst reg_file_reg[7][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40280
load inst reg_file_reg[7][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40430
load inst reg_file_reg[7][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40580
load inst reg_file_reg[7][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40730
load inst reg_file_reg[7][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 40880
load inst reg_file_reg[7][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41030
load inst reg_file_reg[7][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41180
load inst reg_file_reg[7][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41330
load inst reg_file_reg[7][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41480
load inst reg_file_reg[7][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41630
load inst reg_file_reg[7][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37580
load inst reg_file_reg[7][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41780
load inst reg_file_reg[7][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 41930
load inst reg_file_reg[7][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37730
load inst reg_file_reg[7][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 37880
load inst reg_file_reg[7][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38030
load inst reg_file_reg[7][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38180
load inst reg_file_reg[7][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38330
load inst reg_file_reg[7][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38480
load inst reg_file_reg[7][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 38630
load inst reg_file_reg[8][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51680
load inst reg_file_reg[8][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53180
load inst reg_file_reg[8][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53330
load inst reg_file_reg[8][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53480
load inst reg_file_reg[8][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53630
load inst reg_file_reg[8][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53780
load inst reg_file_reg[8][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53930
load inst reg_file_reg[8][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55290
load inst reg_file_reg[8][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55440
load inst reg_file_reg[8][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55600
load inst reg_file_reg[8][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55780
load inst reg_file_reg[8][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51830
load inst reg_file_reg[8][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 55930
load inst reg_file_reg[8][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 56080
load inst reg_file_reg[8][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 56260
load inst reg_file_reg[8][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 56410
load inst reg_file_reg[8][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57090
load inst reg_file_reg[8][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57250
load inst reg_file_reg[8][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57410
load inst reg_file_reg[8][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57560
load inst reg_file_reg[8][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57710
load inst reg_file_reg[8][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 57860
load inst reg_file_reg[8][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 51980
load inst reg_file_reg[8][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58010
load inst reg_file_reg[8][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 58160
load inst reg_file_reg[8][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52130
load inst reg_file_reg[8][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52280
load inst reg_file_reg[8][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52430
load inst reg_file_reg[8][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52580
load inst reg_file_reg[8][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52730
load inst reg_file_reg[8][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 52880
load inst reg_file_reg[8][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 53030
load inst reg_file_reg[9][0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9680
load inst reg_file_reg[9][10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11180
load inst reg_file_reg[9][11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11330
load inst reg_file_reg[9][12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11480
load inst reg_file_reg[9][13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11630
load inst reg_file_reg[9][14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11780
load inst reg_file_reg[9][15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11930
load inst reg_file_reg[9][16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12080
load inst reg_file_reg[9][17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12230
load inst reg_file_reg[9][18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12380
load inst reg_file_reg[9][19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12530
load inst reg_file_reg[9][1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9830
load inst reg_file_reg[9][20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12680
load inst reg_file_reg[9][21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12830
load inst reg_file_reg[9][22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 12980
load inst reg_file_reg[9][23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13130
load inst reg_file_reg[9][24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13280
load inst reg_file_reg[9][25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13430
load inst reg_file_reg[9][26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13580
load inst reg_file_reg[9][27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13730
load inst reg_file_reg[9][28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 13880
load inst reg_file_reg[9][29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14030
load inst reg_file_reg[9][2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 9980
load inst reg_file_reg[9][30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14180
load inst reg_file_reg[9][31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 14330
load inst reg_file_reg[9][3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10130
load inst reg_file_reg[9][4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10280
load inst reg_file_reg[9][5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10430
load inst reg_file_reg[9][6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10580
load inst reg_file_reg[9][7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10730
load inst reg_file_reg[9][8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 10880
load inst reg_file_reg[9][9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1530 -y 11030
load inst reset_mgr clock_reset_manager work:clock_reset_manager:NOFILE -autohide -attr @cell(#000000) clock_reset_manager -pg 1 -lvl 3 -x 920 -y 56860
load inst rst_n_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 400 -y 56890
load inst s_axi_araddr_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 60970
load inst s_axi_araddr_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61040
load inst s_axi_araddr_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61110
load inst s_axi_araddr_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61180
load inst s_axi_araddr_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61250
load inst s_axi_araddr_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61320
load inst s_axi_araddr_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61390
load inst s_axi_araddr_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 61460
load inst s_axi_arready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61480
load inst s_axi_arready_OBUF_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 8220 -y 61390
load inst s_axi_arready_reg_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 12 -x 7280 -y 61250
load inst s_axi_arready_reg_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 7700 -y 61250
load inst s_axi_arvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1530 -y 56900
load inst s_axi_awaddr_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57370
load inst s_axi_awaddr_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57440
load inst s_axi_awaddr_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57510
load inst s_axi_awaddr_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57580
load inst s_axi_awaddr_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57650
load inst s_axi_awaddr_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57720
load inst s_axi_awaddr_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57790
load inst s_axi_awaddr_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 57860
load inst s_axi_awready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57280
load inst s_axi_awready_OBUF_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 8220 -y 57210
load inst s_axi_awready_reg_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 12 -x 7280 -y 57400
load inst s_axi_awready_reg_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 7700 -y 57170
load inst s_axi_awvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 55160
load inst s_axi_bready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 11 -x 6650 -y 57040
load inst s_axi_bresp_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55320
load inst s_axi_bresp_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55390
load inst s_axi_bresp_OBUF[1]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -x 8220 -y 55740
load inst s_axi_bvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55810
load inst s_axi_bvalid_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -x 8220 -y 55960
load inst s_axi_bvalid_reg_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 12 -x 7280 -y 56860
load inst s_axi_bvalid_reg_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 7700 -y 56930
load inst s_axi_rdata_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54130
load inst s_axi_rdata_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54830
load inst s_axi_rdata_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54900
load inst s_axi_rdata_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54970
load inst s_axi_rdata_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55040
load inst s_axi_rdata_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55110
load inst s_axi_rdata_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55180
load inst s_axi_rdata_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55250
load inst s_axi_rdata_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55460
load inst s_axi_rdata_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55530
load inst s_axi_rdata_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55600
load inst s_axi_rdata_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54200
load inst s_axi_rdata_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55670
load inst s_axi_rdata_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55740
load inst s_axi_rdata_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55880
load inst s_axi_rdata_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 55950
load inst s_axi_rdata_OBUF[24]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56020
load inst s_axi_rdata_OBUF[25]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56090
load inst s_axi_rdata_OBUF[26]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56160
load inst s_axi_rdata_OBUF[27]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56300
load inst s_axi_rdata_OBUF[28]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56370
load inst s_axi_rdata_OBUF[29]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56440
load inst s_axi_rdata_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54270
load inst s_axi_rdata_OBUF[30]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56510
load inst s_axi_rdata_OBUF[31]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 56580
load inst s_axi_rdata_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54340
load inst s_axi_rdata_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54410
load inst s_axi_rdata_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54480
load inst s_axi_rdata_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54550
load inst s_axi_rdata_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54620
load inst s_axi_rdata_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54690
load inst s_axi_rdata_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 54760
load inst s_axi_rdata_reg[31]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 5 -x 2520 -y 56880
load inst s_axi_rdata_reg_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 51810
load inst s_axi_rdata_reg_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52410
load inst s_axi_rdata_reg_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52560
load inst s_axi_rdata_reg_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52710
load inst s_axi_rdata_reg_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52860
load inst s_axi_rdata_reg_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53010
load inst s_axi_rdata_reg_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53160
load inst s_axi_rdata_reg_reg[16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53310
load inst s_axi_rdata_reg_reg[17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53460
load inst s_axi_rdata_reg_reg[18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53620
load inst s_axi_rdata_reg_reg[19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53770
load inst s_axi_rdata_reg_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 51960
load inst s_axi_rdata_reg_reg[20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 53920
load inst s_axi_rdata_reg_reg[21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54070
load inst s_axi_rdata_reg_reg[22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54220
load inst s_axi_rdata_reg_reg[23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54370
load inst s_axi_rdata_reg_reg[24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54520
load inst s_axi_rdata_reg_reg[25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54670
load inst s_axi_rdata_reg_reg[26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54820
load inst s_axi_rdata_reg_reg[27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 54970
load inst s_axi_rdata_reg_reg[28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 55120
load inst s_axi_rdata_reg_reg[29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 55270
load inst s_axi_rdata_reg_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 55780
load inst s_axi_rdata_reg_reg[30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 55420
load inst s_axi_rdata_reg_reg[31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 55570
load inst s_axi_rdata_reg_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 56120
load inst s_axi_rdata_reg_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 56380
load inst s_axi_rdata_reg_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 56530
load inst s_axi_rdata_reg_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 56730
load inst s_axi_rdata_reg_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 3190 -y 56890
load inst s_axi_rdata_reg_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52110
load inst s_axi_rdata_reg_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 7 -x 3960 -y 52260
load inst s_axi_rready_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 11 -x 6650 -y 75750
load inst s_axi_rresp_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51750
load inst s_axi_rresp_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 51820
load inst s_axi_rresp_OBUF[1]_inst_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 14 -x 8220 -y 61120
load inst s_axi_rvalid_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 61550
load inst s_axi_rvalid_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 14 -x 8220 -y 61500
load inst s_axi_rvalid_reg_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 12 -x 7280 -y 61380
load inst s_axi_rvalid_reg_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 7700 -y 61400
load inst s_axi_wdata_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65610
load inst s_axi_wdata_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66310
load inst s_axi_wdata_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66380
load inst s_axi_wdata_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66450
load inst s_axi_wdata_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66520
load inst s_axi_wdata_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66590
load inst s_axi_wdata_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66660
load inst s_axi_wdata_IBUF[16]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66730
load inst s_axi_wdata_IBUF[17]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66800
load inst s_axi_wdata_IBUF[18]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66870
load inst s_axi_wdata_IBUF[19]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66940
load inst s_axi_wdata_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65680
load inst s_axi_wdata_IBUF[20]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67010
load inst s_axi_wdata_IBUF[21]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67080
load inst s_axi_wdata_IBUF[22]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67150
load inst s_axi_wdata_IBUF[23]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67220
load inst s_axi_wdata_IBUF[24]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67290
load inst s_axi_wdata_IBUF[25]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67360
load inst s_axi_wdata_IBUF[26]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67430
load inst s_axi_wdata_IBUF[27]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67500
load inst s_axi_wdata_IBUF[28]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67570
load inst s_axi_wdata_IBUF[29]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67640
load inst s_axi_wdata_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65750
load inst s_axi_wdata_IBUF[30]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67710
load inst s_axi_wdata_IBUF[31]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 67780
load inst s_axi_wdata_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65820
load inst s_axi_wdata_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65890
load inst s_axi_wdata_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 65960
load inst s_axi_wdata_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66030
load inst s_axi_wdata_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66100
load inst s_axi_wdata_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66170
load inst s_axi_wdata_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 920 -y 66240
load inst s_axi_wready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57350
load inst s_axi_wready_OBUF_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 14 -x 8220 -y 57320
load inst s_axi_wready_reg_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 13 -x 7700 -y 57330
load inst s_axi_wstrb_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 400 -y 64830
load inst s_axi_wstrb_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 400 -y 64900
load inst s_axi_wstrb_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 400 -y 64970
load inst s_axi_wstrb_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 400 -y 65040
load inst s_axi_wvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 55090
load inst s_axis_input_tdata_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 54710
load inst s_axis_input_tdata_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55430
load inst s_axis_input_tdata_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55500
load inst s_axis_input_tdata_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55570
load inst s_axis_input_tdata_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55640
load inst s_axis_input_tdata_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56050
load inst s_axis_input_tdata_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56120
load inst s_axis_input_tdata_IBUF[16]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56210
load inst s_axis_input_tdata_IBUF[17]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56280
load inst s_axis_input_tdata_IBUF[18]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56350
load inst s_axis_input_tdata_IBUF[19]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56540
load inst s_axis_input_tdata_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 54780
load inst s_axis_input_tdata_IBUF[20]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56630
load inst s_axis_input_tdata_IBUF[21]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56720
load inst s_axis_input_tdata_IBUF[22]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56790
load inst s_axis_input_tdata_IBUF[23]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 56860
load inst s_axis_input_tdata_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 54850
load inst s_axis_input_tdata_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 54920
load inst s_axis_input_tdata_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 54990
load inst s_axis_input_tdata_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55060
load inst s_axis_input_tdata_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55130
load inst s_axis_input_tdata_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55200
load inst s_axis_input_tdata_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55270
load inst s_axis_input_tdata_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 55360
load inst s_axis_input_tlast_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 2520 -y 57120
load inst s_axis_input_tready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 60360
load inst s_axis_input_tvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 8 -x 4700 -y 57370
load inst s_kernel_tready_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 57210
load inst s_kernel_tvalid_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 2520 -y 57190
load inst valid_out_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 15 -x 8740 -y 58260
load net <const0> -ground -pin m_axi_wdata_OBUF[0]_inst I -pin m_axi_wdata_OBUF[1]_inst I -pin m_axi_wdata_OBUF[2]_inst I -pin m_axi_wdata_OBUF[3]_inst I -pin m_axi_wdata_OBUF[4]_inst I -pin m_axi_wdata_OBUF[5]_inst I -pin m_axi_wdata_OBUF[6]_inst I -pin m_axi_wdata_OBUF[7]_inst I
load net <const1> -power -pin s_axi_arready_reg_reg CE -pin s_axi_bvalid_reg_reg CE -pin s_axi_rvalid_reg_reg CE
load net VCC_2 -power -pin clk_IBUF_BUFG_inst CE
load net axi_valid_out -port axi_valid_out -pin axi_valid_out_OBUF_inst O
netloc axi_valid_out 1 15 1 NJ 58120
load net busy -pin perf busy -pin preproc busy
netloc busy 1 4 6 2300 53540 NJ 53540 NJ 53540 NJ 53540 NJ 53540 5640
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 57030
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O -pin clk_gate clk_IBUF
netloc clk_IBUF 1 1 11 340 57010 NJ 57010 NJ 57010 1800J 57240 2750J 57250 NJ 57250 NJ 57250 NJ 57250 NJ 57250 NJ 57250 7000J
load net clk_IBUF_BUFG -pin act_fn clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin clk_gate clk_IBUF_BUFG -pin dataflow clk_IBUF_BUFG -pin dma_bridge clk_IBUF_BUFG -pin irq_ctrl clk_IBUF_BUFG -pin loader clk_IBUF_BUFG -pin perf clk_IBUF_BUFG -pin pipe_ctrl clk_IBUF_BUFG -pin preproc clk_IBUF_BUFG -pin reg_file_reg[0][0] C -pin reg_file_reg[0][10] C -pin reg_file_reg[0][11] C -pin reg_file_reg[0][12] C -pin reg_file_reg[0][13] C -pin reg_file_reg[0][14] C -pin reg_file_reg[0][15] C -pin reg_file_reg[0][16] C -pin reg_file_reg[0][17] C -pin reg_file_reg[0][18] C -pin reg_file_reg[0][19] C -pin reg_file_reg[0][1] C -pin reg_file_reg[0][20] C -pin reg_file_reg[0][21] C -pin reg_file_reg[0][22] C -pin reg_file_reg[0][23] C -pin reg_file_reg[0][24] C -pin reg_file_reg[0][25] C -pin reg_file_reg[0][26] C -pin reg_file_reg[0][27] C -pin reg_file_reg[0][28] C -pin reg_file_reg[0][29] C -pin reg_file_reg[0][2] C -pin reg_file_reg[0][30] C -pin reg_file_reg[0][31] C -pin reg_file_reg[0][3] C -pin reg_file_reg[0][4] C -pin reg_file_reg[0][5] C -pin reg_file_reg[0][6] C -pin reg_file_reg[0][7] C -pin reg_file_reg[0][8] C -pin reg_file_reg[0][9] C -pin reg_file_reg[10][0] C -pin reg_file_reg[10][10] C -pin reg_file_reg[10][11] C -pin reg_file_reg[10][12] C -pin reg_file_reg[10][13] C -pin reg_file_reg[10][14] C -pin reg_file_reg[10][15] C -pin reg_file_reg[10][16] C -pin reg_file_reg[10][17] C -pin reg_file_reg[10][18] C -pin reg_file_reg[10][19] C -pin reg_file_reg[10][1] C -pin reg_file_reg[10][20] C -pin reg_file_reg[10][21] C -pin reg_file_reg[10][22] C -pin reg_file_reg[10][23] C -pin reg_file_reg[10][24] C -pin reg_file_reg[10][25] C -pin reg_file_reg[10][26] C -pin reg_file_reg[10][27] C -pin reg_file_reg[10][28] C -pin reg_file_reg[10][29] C -pin reg_file_reg[10][2] C -pin reg_file_reg[10][30] C -pin reg_file_reg[10][31] C -pin reg_file_reg[10][3] C -pin reg_file_reg[10][4] C -pin reg_file_reg[10][5] C -pin reg_file_reg[10][6] C -pin reg_file_reg[10][7] C -pin reg_file_reg[10][8] C -pin reg_file_reg[10][9] C -pin reg_file_reg[11][0] C -pin reg_file_reg[11][10] C -pin reg_file_reg[11][11] C -pin reg_file_reg[11][12] C -pin reg_file_reg[11][13] C -pin reg_file_reg[11][14] C -pin reg_file_reg[11][15] C -pin reg_file_reg[11][16] C -pin reg_file_reg[11][17] C -pin reg_file_reg[11][18] C -pin reg_file_reg[11][19] C -pin reg_file_reg[11][1] C -pin reg_file_reg[11][20] C -pin reg_file_reg[11][21] C -pin reg_file_reg[11][22] C -pin reg_file_reg[11][23] C -pin reg_file_reg[11][24] C -pin reg_file_reg[11][25] C -pin reg_file_reg[11][26] C -pin reg_file_reg[11][27] C -pin reg_file_reg[11][28] C -pin reg_file_reg[11][29] C -pin reg_file_reg[11][2] C -pin reg_file_reg[11][30] C -pin reg_file_reg[11][31] C -pin reg_file_reg[11][3] C -pin reg_file_reg[11][4] C -pin reg_file_reg[11][5] C -pin reg_file_reg[11][6] C -pin reg_file_reg[11][7] C -pin reg_file_reg[11][8] C -pin reg_file_reg[11][9] C -pin reg_file_reg[12][0] C -pin reg_file_reg[12][10] C -pin reg_file_reg[12][11] C -pin reg_file_reg[12][12] C -pin reg_file_reg[12][13] C -pin reg_file_reg[12][14] C -pin reg_file_reg[12][15] C -pin reg_file_reg[12][16] C -pin reg_file_reg[12][17] C -pin reg_file_reg[12][18] C -pin reg_file_reg[12][19] C -pin reg_file_reg[12][1] C -pin reg_file_reg[12][20] C -pin reg_file_reg[12][21] C -pin reg_file_reg[12][22] C -pin reg_file_reg[12][23] C -pin reg_file_reg[12][24] C -pin reg_file_reg[12][25] C -pin reg_file_reg[12][26] C -pin reg_file_reg[12][27] C -pin reg_file_reg[12][28] C -pin reg_file_reg[12][29] C -pin reg_file_reg[12][2] C -pin reg_file_reg[12][30] C -pin reg_file_reg[12][31] C -pin reg_file_reg[12][3] C -pin reg_file_reg[12][4] C -pin reg_file_reg[12][5] C -pin reg_file_reg[12][6] C -pin reg_file_reg[12][7] C -pin reg_file_reg[12][8] C -pin reg_file_reg[12][9] C -pin reg_file_reg[13][0] C -pin reg_file_reg[13][10] C -pin reg_file_reg[13][11] C -pin reg_file_reg[13][12] C -pin reg_file_reg[13][13] C -pin reg_file_reg[13][14] C -pin reg_file_reg[13][15] C -pin reg_file_reg[13][16] C -pin reg_file_reg[13][17] C -pin reg_file_reg[13][18] C -pin reg_file_reg[13][19] C -pin reg_file_reg[13][1] C -pin reg_file_reg[13][20] C -pin reg_file_reg[13][21] C -pin reg_file_reg[13][22] C -pin reg_file_reg[13][23] C -pin reg_file_reg[13][24] C -pin reg_file_reg[13][25] C -pin reg_file_reg[13][26] C -pin reg_file_reg[13][27] C -pin reg_file_reg[13][28] C -pin reg_file_reg[13][29] C -pin reg_file_reg[13][2] C -pin reg_file_reg[13][30] C -pin reg_file_reg[13][31] C -pin reg_file_reg[13][3] C -pin reg_file_reg[13][4] C -pin reg_file_reg[13][5] C -pin reg_file_reg[13][6] C -pin reg_file_reg[13][7] C -pin reg_file_reg[13][8] C -pin reg_file_reg[13][9] C -pin reg_file_reg[14][0] C -pin reg_file_reg[14][10] C -pin reg_file_reg[14][11] C -pin reg_file_reg[14][12] C -pin reg_file_reg[14][13] C -pin reg_file_reg[14][14] C -pin reg_file_reg[14][15] C -pin reg_file_reg[14][16] C -pin reg_file_reg[14][17] C -pin reg_file_reg[14][18] C -pin reg_file_reg[14][19] C -pin reg_file_reg[14][1] C -pin reg_file_reg[14][20] C -pin reg_file_reg[14][21] C -pin reg_file_reg[14][22] C -pin reg_file_reg[14][23] C -pin reg_file_reg[14][24] C -pin reg_file_reg[14][25] C -pin reg_file_reg[14][26] C -pin reg_file_reg[14][27] C -pin reg_file_reg[14][28] C -pin reg_file_reg[14][29] C -pin reg_file_reg[14][2] C -pin reg_file_reg[14][30] C -pin reg_file_reg[14][31] C -pin reg_file_reg[14][3] C -pin reg_file_reg[14][4] C -pin reg_file_reg[14][5] C -pin reg_file_reg[14][6] C -pin reg_file_reg[14][7] C -pin reg_file_reg[14][8] C -pin reg_file_reg[14][9] C -pin reg_file_reg[15][0] C -pin reg_file_reg[15][10] C -pin reg_file_reg[15][11] C -pin reg_file_reg[15][12] C -pin reg_file_reg[15][13] C -pin reg_file_reg[15][14] C -pin reg_file_reg[15][15] C -pin reg_file_reg[15][16] C -pin reg_file_reg[15][17] C -pin reg_file_reg[15][18] C -pin reg_file_reg[15][19] C -pin reg_file_reg[15][1] C -pin reg_file_reg[15][20] C -pin reg_file_reg[15][21] C -pin reg_file_reg[15][22] C -pin reg_file_reg[15][23] C -pin reg_file_reg[15][24] C -pin reg_file_reg[15][25] C -pin reg_file_reg[15][26] C -pin reg_file_reg[15][27] C -pin reg_file_reg[15][28] C -pin reg_file_reg[15][29] C -pin reg_file_reg[15][2] C -pin reg_file_reg[15][30] C -pin reg_file_reg[15][31] C -pin reg_file_reg[15][3] C -pin reg_file_reg[15][4] C -pin reg_file_reg[15][5] C -pin reg_file_reg[15][6] C -pin reg_file_reg[15][7] C -pin reg_file_reg[15][8] C -pin reg_file_reg[15][9] C -pin reg_file_reg[1][0] C -pin reg_file_reg[1][10] C -pin reg_file_reg[1][11] C -pin reg_file_reg[1][12] C -pin reg_file_reg[1][13] C -pin reg_file_reg[1][14] C -pin reg_file_reg[1][15] C -pin reg_file_reg[1][16] C -pin reg_file_reg[1][17] C -pin reg_file_reg[1][18] C -pin reg_file_reg[1][19] C -pin reg_file_reg[1][1] C -pin reg_file_reg[1][20] C -pin reg_file_reg[1][21] C -pin reg_file_reg[1][22] C -pin reg_file_reg[1][23] C -pin reg_file_reg[1][24] C -pin reg_file_reg[1][25] C -pin reg_file_reg[1][26] C -pin reg_file_reg[1][27] C -pin reg_file_reg[1][28] C -pin reg_file_reg[1][29] C -pin reg_file_reg[1][2] C -pin reg_file_reg[1][30] C -pin reg_file_reg[1][31] C -pin reg_file_reg[1][3] C -pin reg_file_reg[1][4] C -pin reg_file_reg[1][5] C -pin reg_file_reg[1][6] C -pin reg_file_reg[1][7] C -pin reg_file_reg[1][8] C -pin reg_file_reg[1][9] C -pin reg_file_reg[2][0] C -pin reg_file_reg[2][10] C -pin reg_file_reg[2][11] C -pin reg_file_reg[2][12] C -pin reg_file_reg[2][13] C -pin reg_file_reg[2][14] C -pin reg_file_reg[2][15] C -pin reg_file_reg[2][16] C -pin reg_file_reg[2][17] C -pin reg_file_reg[2][18] C -pin reg_file_reg[2][19] C -pin reg_file_reg[2][1] C -pin reg_file_reg[2][20] C -pin reg_file_reg[2][21] C -pin reg_file_reg[2][22] C -pin reg_file_reg[2][23] C -pin reg_file_reg[2][24] C -pin reg_file_reg[2][25] C -pin reg_file_reg[2][26] C -pin reg_file_reg[2][27] C -pin reg_file_reg[2][28] C -pin reg_file_reg[2][29] C -pin reg_file_reg[2][2] C -pin reg_file_reg[2][30] C -pin reg_file_reg[2][31] C -pin reg_file_reg[2][3] C -pin reg_file_reg[2][4] C -pin reg_file_reg[2][5] C -pin reg_file_reg[2][6] C -pin reg_file_reg[2][7] C -pin reg_file_reg[2][8] C -pin reg_file_reg[2][9] C -pin reg_file_reg[3][0] C -pin reg_file_reg[3][10] C -pin reg_file_reg[3][11] C -pin reg_file_reg[3][12] C -pin reg_file_reg[3][13] C -pin reg_file_reg[3][14] C -pin reg_file_reg[3][15] C -pin reg_file_reg[3][16] C -pin reg_file_reg[3][17] C -pin reg_file_reg[3][18] C -pin reg_file_reg[3][19] C -pin reg_file_reg[3][1] C -pin reg_file_reg[3][20] C -pin reg_file_reg[3][21] C -pin reg_file_reg[3][22] C -pin reg_file_reg[3][23] C -pin reg_file_reg[3][24] C -pin reg_file_reg[3][25] C -pin reg_file_reg[3][26] C -pin reg_file_reg[3][27] C -pin reg_file_reg[3][28] C -pin reg_file_reg[3][29] C -pin reg_file_reg[3][2] C -pin reg_file_reg[3][30] C -pin reg_file_reg[3][31] C -pin reg_file_reg[3][3] C -pin reg_file_reg[3][4] C -pin reg_file_reg[3][5] C -pin reg_file_reg[3][6] C -pin reg_file_reg[3][7] C -pin reg_file_reg[3][8] C -pin reg_file_reg[3][9] C -pin reg_file_reg[4][0] C -pin reg_file_reg[4][10] C -pin reg_file_reg[4][11] C -pin reg_file_reg[4][12] C -pin reg_file_reg[4][13] C -pin reg_file_reg[4][14] C -pin reg_file_reg[4][15] C -pin reg_file_reg[4][16] C -pin reg_file_reg[4][17] C -pin reg_file_reg[4][18] C -pin reg_file_reg[4][19] C -pin reg_file_reg[4][1] C -pin reg_file_reg[4][20] C -pin reg_file_reg[4][21] C -pin reg_file_reg[4][22] C -pin reg_file_reg[4][23] C -pin reg_file_reg[4][24] C -pin reg_file_reg[4][25] C -pin reg_file_reg[4][26] C -pin reg_file_reg[4][27] C -pin reg_file_reg[4][28] C -pin reg_file_reg[4][29] C -pin reg_file_reg[4][2] C -pin reg_file_reg[4][30] C -pin reg_file_reg[4][31] C -pin reg_file_reg[4][3] C -pin reg_file_reg[4][4] C -pin reg_file_reg[4][5] C -pin reg_file_reg[4][6] C -pin reg_file_reg[4][7] C -pin reg_file_reg[4][8] C -pin reg_file_reg[4][9] C -pin reg_file_reg[5][0] C -pin reg_file_reg[5][10] C -pin reg_file_reg[5][11] C -pin reg_file_reg[5][12] C -pin reg_file_reg[5][13] C -pin reg_file_reg[5][14] C -pin reg_file_reg[5][15] C -pin reg_file_reg[5][16] C -pin reg_file_reg[5][17] C -pin reg_file_reg[5][18] C -pin reg_file_reg[5][19] C -pin reg_file_reg[5][1] C -pin reg_file_reg[5][20] C -pin reg_file_reg[5][21] C -pin reg_file_reg[5][22] C -pin reg_file_reg[5][23] C -pin reg_file_reg[5][24] C -pin reg_file_reg[5][25] C -pin reg_file_reg[5][26] C -pin reg_file_reg[5][27] C -pin reg_file_reg[5][28] C -pin reg_file_reg[5][29] C -pin reg_file_reg[5][2] C -pin reg_file_reg[5][30] C -pin reg_file_reg[5][31] C -pin reg_file_reg[5][3] C -pin reg_file_reg[5][4] C -pin reg_file_reg[5][5] C -pin reg_file_reg[5][6] C -pin reg_file_reg[5][7] C -pin reg_file_reg[5][8] C -pin reg_file_reg[5][9] C -pin reg_file_reg[6][0] C -pin reg_file_reg[6][10] C -pin reg_file_reg[6][11] C -pin reg_file_reg[6][12] C -pin reg_file_reg[6][13] C -pin reg_file_reg[6][14] C -pin reg_file_reg[6][15] C -pin reg_file_reg[6][16] C -pin reg_file_reg[6][17] C -pin reg_file_reg[6][18] C -pin reg_file_reg[6][19] C -pin reg_file_reg[6][1] C -pin reg_file_reg[6][20] C -pin reg_file_reg[6][21] C -pin reg_file_reg[6][22] C -pin reg_file_reg[6][23] C -pin reg_file_reg[6][24] C -pin reg_file_reg[6][25] C -pin reg_file_reg[6][26] C -pin reg_file_reg[6][27] C -pin reg_file_reg[6][28] C -pin reg_file_reg[6][29] C -pin reg_file_reg[6][2] C -pin reg_file_reg[6][30] C -pin reg_file_reg[6][31] C -pin reg_file_reg[6][3] C -pin reg_file_reg[6][4] C -pin reg_file_reg[6][5] C -pin reg_file_reg[6][6] C -pin reg_file_reg[6][7] C -pin reg_file_reg[6][8] C -pin reg_file_reg[6][9] C -pin reg_file_reg[7][0] C -pin reg_file_reg[7][10] C -pin reg_file_reg[7][11] C -pin reg_file_reg[7][12] C -pin reg_file_reg[7][13] C -pin reg_file_reg[7][14] C -pin reg_file_reg[7][15] C -pin reg_file_reg[7][16] C -pin reg_file_reg[7][17] C -pin reg_file_reg[7][18] C -pin reg_file_reg[7][19] C -pin reg_file_reg[7][1] C -pin reg_file_reg[7][20] C -pin reg_file_reg[7][21] C -pin reg_file_reg[7][22] C -pin reg_file_reg[7][23] C -pin reg_file_reg[7][24] C -pin reg_file_reg[7][25] C -pin reg_file_reg[7][26] C -pin reg_file_reg[7][27] C -pin reg_file_reg[7][28] C -pin reg_file_reg[7][29] C -pin reg_file_reg[7][2] C -pin reg_file_reg[7][30] C -pin reg_file_reg[7][31] C -pin reg_file_reg[7][3] C -pin reg_file_reg[7][4] C -pin reg_file_reg[7][5] C -pin reg_file_reg[7][6] C -pin reg_file_reg[7][7] C -pin reg_file_reg[7][8] C -pin reg_file_reg[7][9] C -pin reg_file_reg[8][0] C -pin reg_file_reg[8][10] C -pin reg_file_reg[8][11] C -pin reg_file_reg[8][12] C -pin reg_file_reg[8][13] C -pin reg_file_reg[8][14] C -pin reg_file_reg[8][15] C -pin reg_file_reg[8][16] C -pin reg_file_reg[8][17] C -pin reg_file_reg[8][18] C -pin reg_file_reg[8][19] C -pin reg_file_reg[8][1] C -pin reg_file_reg[8][20] C -pin reg_file_reg[8][21] C -pin reg_file_reg[8][22] C -pin reg_file_reg[8][23] C -pin reg_file_reg[8][24] C -pin reg_file_reg[8][25] C -pin reg_file_reg[8][26] C -pin reg_file_reg[8][27] C -pin reg_file_reg[8][28] C -pin reg_file_reg[8][29] C -pin reg_file_reg[8][2] C -pin reg_file_reg[8][30] C -pin reg_file_reg[8][31] C -pin reg_file_reg[8][3] C -pin reg_file_reg[8][4] C -pin reg_file_reg[8][5] C -pin reg_file_reg[8][6] C -pin reg_file_reg[8][7] C -pin reg_file_reg[8][8] C -pin reg_file_reg[8][9] C -pin reg_file_reg[9][0] C -pin reg_file_reg[9][10] C -pin reg_file_reg[9][11] C -pin reg_file_reg[9][12] C -pin reg_file_reg[9][13] C -pin reg_file_reg[9][14] C -pin reg_file_reg[9][15] C -pin reg_file_reg[9][16] C -pin reg_file_reg[9][17] C -pin reg_file_reg[9][18] C -pin reg_file_reg[9][19] C -pin reg_file_reg[9][1] C -pin reg_file_reg[9][20] C -pin reg_file_reg[9][21] C -pin reg_file_reg[9][22] C -pin reg_file_reg[9][23] C -pin reg_file_reg[9][24] C -pin reg_file_reg[9][25] C -pin reg_file_reg[9][26] C -pin reg_file_reg[9][27] C -pin reg_file_reg[9][28] C -pin reg_file_reg[9][29] C -pin reg_file_reg[9][2] C -pin reg_file_reg[9][30] C -pin reg_file_reg[9][31] C -pin reg_file_reg[9][3] C -pin reg_file_reg[9][4] C -pin reg_file_reg[9][5] C -pin reg_file_reg[9][6] C -pin reg_file_reg[9][7] C -pin reg_file_reg[9][8] C -pin reg_file_reg[9][9] C -pin reset_mgr clk_IBUF_BUFG -pin s_axi_arready_reg_reg C -pin s_axi_awready_reg_reg C -pin s_axi_bvalid_reg_reg C -pin s_axi_rdata_reg_reg[0] C -pin s_axi_rdata_reg_reg[10] C -pin s_axi_rdata_reg_reg[11] C -pin s_axi_rdata_reg_reg[12] C -pin s_axi_rdata_reg_reg[13] C -pin s_axi_rdata_reg_reg[14] C -pin s_axi_rdata_reg_reg[15] C -pin s_axi_rdata_reg_reg[16] C -pin s_axi_rdata_reg_reg[17] C -pin s_axi_rdata_reg_reg[18] C -pin s_axi_rdata_reg_reg[19] C -pin s_axi_rdata_reg_reg[1] C -pin s_axi_rdata_reg_reg[20] C -pin s_axi_rdata_reg_reg[21] C -pin s_axi_rdata_reg_reg[22] C -pin s_axi_rdata_reg_reg[23] C -pin s_axi_rdata_reg_reg[24] C -pin s_axi_rdata_reg_reg[25] C -pin s_axi_rdata_reg_reg[26] C -pin s_axi_rdata_reg_reg[27] C -pin s_axi_rdata_reg_reg[28] C -pin s_axi_rdata_reg_reg[29] C -pin s_axi_rdata_reg_reg[2] C -pin s_axi_rdata_reg_reg[30] C -pin s_axi_rdata_reg_reg[31] C -pin s_axi_rdata_reg_reg[3] C -pin s_axi_rdata_reg_reg[4] C -pin s_axi_rdata_reg_reg[5] C -pin s_axi_rdata_reg_reg[6] C -pin s_axi_rdata_reg_reg[7] C -pin s_axi_rdata_reg_reg[8] C -pin s_axi_rdata_reg_reg[9] C -pin s_axi_rvalid_reg_reg C -pin s_axi_wready_reg_reg C
netloc clk_IBUF_BUFG 1 2 11 600 57030 1360 55210 2200 55720 2930 55560 3450 56040 4290 56680 5040 56950 5800 56990 6440 57210 7160 57370 7580
load net clk_conv -pin clk_conv_BUFG_inst I -pin clk_gate clk_conv
netloc clk_conv 1 4 9 2300 57330 NJ 57330 NJ 57330 NJ 57330 NJ 57330 NJ 57330 NJ 57330 NJ 57330 7420
load net clk_conv_BUFG -pin clk_conv_BUFG_inst O -pin conv CLK
netloc clk_conv_BUFG 1 5 1 2870J 57030n
load net clk_fc -pin clk_fc_BUFG_inst I -pin clk_gate clk_fc
netloc clk_fc 1 12 1 7500J 57230n
load net clk_fc_BUFG -pin clk_fc_BUFG_inst O -pin fc CLK
netloc clk_fc_BUFG 1 13 1 N 57490
load net clk_pool -pin clk_gate clk_pool -pin clk_pool_BUFG_inst I
netloc clk_pool 1 12 1 7440 56810n
load net clk_pool_BUFG -pin clk_pool_BUFG_inst O -pin pool CLK
netloc clk_pool_BUFG 1 13 1 NJ 56810
load net dataflow_n_3 -attr @rip(#000000) FSM_onehot_state_reg[0]_0[0] -pin dataflow FSM_onehot_state_reg[0]_0[0] -pin pipe_ctrl process_done_reg[0]
netloc dataflow_n_3 1 9 3 5840 57090 NJ 57090 6900
load net debug_out[0] -attr @rip(#000000) 0 -port debug_out[0] -pin debug_out_OBUF[0]_inst O
load net debug_out[1] -attr @rip(#000000) 1 -port debug_out[1] -pin debug_out_OBUF[1]_inst O
load net debug_out[2] -attr @rip(#000000) 2 -port debug_out[2] -pin debug_out_OBUF[2]_inst O
load net debug_out[3] -attr @rip(#000000) 3 -port debug_out[3] -pin debug_out_OBUF[3]_inst O
load net debug_out[4] -attr @rip(#000000) 4 -port debug_out[4] -pin debug_out_OBUF[4]_inst O
load net debug_out[5] -attr @rip(#000000) 5 -port debug_out[5] -pin debug_out_OBUF[5]_inst O
load net debug_out[6] -attr @rip(#000000) 6 -port debug_out[6] -pin debug_out_OBUF[6]_inst O
load net debug_out[7] -attr @rip(#000000) 7 -port debug_out[7] -pin debug_out_OBUF[7]_inst O
load net debug_out_OBUF[1] -attr @rip(#000000) out0[1] -pin act_fn m_axis_tvalid -pin conv out0[1] -pin dataflow debug_out_OBUF[0] -pin debug_out_OBUF[1]_inst I -pin irq_ctrl debug_out_OBUF[0] -pin preproc debug_out_OBUF[0]
load net debug_out_OBUF[2] -attr @rip(#000000) debug_out_OBUF[0] -pin act_fn debug_out_OBUF[0] -pin irq_ctrl debug_out_OBUF[1] -pin pool debug_out_OBUF[0] -pin preproc debug_out_OBUF[1]
load net debug_out_OBUF[3] -attr @rip(#000000) valid_reg_reg_0[0] -pin dataflow debug_out_OBUF[1] -pin fc FSM_sequential_state_reg[1]_inv_0[0] -pin irq_ctrl debug_out_OBUF[2] -pin pool valid_reg_reg_0[0] -pin preproc debug_out_OBUF[2]
load net debug_out_OBUF[4] -attr @rip(#000000) debug_out_OBUF[0] -pin axi_valid_out_OBUF_inst I -pin dataflow debug_out_OBUF[2] -pin debug_out_OBUF[4]_inst I -pin fc debug_out_OBUF[0] -pin irq_ctrl debug_out_OBUF[3] -pin m_axis_output_tlast_OBUF_inst I -pin preproc debug_out_OBUF[3] -pin valid_out_OBUF_inst I
load net debug_out_OBUF[5] -attr @rip(#000000) debug_out_OBUF[0] -pin debug_out_OBUF[5]_inst I -pin dma_bridge debug_out_OBUF[0] -pin irq_ctrl debug_out_OBUF[4] -pin pipe_ctrl error[0]
load net debug_out_OBUF[6] -attr @rip(#000000) debug_out_OBUF[0] -pin irq_ctrl debug_out_OBUF[5] -pin loader debug_out_OBUF[0] -pin pipe_ctrl error[1]
load net debug_out_OBUF[7] -attr @rip(#000000) debug_out_OBUF[0] -pin debug_out_OBUF[7]_inst I -pin irq_ctrl debug_out_OBUF[6] -pin pipe_ctrl debug_out_OBUF[0]
load net done -port done -pin done_OBUF_inst O
netloc done 1 15 1 NJ 58050
load net done_OBUF -pin dataflow process_done -pin done_OBUF_inst I
netloc done_OBUF 1 11 4 6960J 57590 NJ 57590 NJ 57590 8560J
load net en_conv0 -pin clk_gate en_conv0 -pin dataflow en_conv0
netloc en_conv0 1 11 1 7080 56870n
load net en_fc0 -pin clk_gate en_fc0 -pin dataflow en_fc0
netloc en_fc0 1 11 1 7040 56890n
load net en_pool0 -pin clk_gate en_pool0 -pin dataflow en_pool0
netloc en_pool0 1 11 1 7060 56910n
load net error -port error -pin error_OBUF_inst O
netloc error 1 15 1 NJ 57140
load net error_OBUF -pin error_OBUF_inst I -pin pipe_ctrl error_OBUF
netloc error_OBUF 1 10 5 6280J 57190 6980J 57070 NJ 57070 NJ 57070 8620J
load net kernel_loaded -pin conv kernel_loaded -pin debug_out_OBUF[0]_inst I
netloc kernel_loaded 1 6 9 3570 56190 4430J 56420 5080J 56400 NJ 56400 NJ 56400 NJ 56400 NJ 56400 NJ 56400 8660J
load net loader_n_1 -attr @rip(#000000) E[0] -pin dma_bridge E[0] -pin loader E[0]
netloc loader_n_1 1 7 1 4270 55730n
load net loader_n_2 -pin dma_bridge FSM_onehot_state_reg[0]_0 -pin loader FSM_onehot_state_reg[1]_0
netloc loader_n_2 1 7 1 4330 55750n
load net lopt -pin act_fn lopt -pin debug_out_OBUF[2]_inst I
netloc lopt 1 8 7 5000 57350 NJ 57350 NJ 57350 NJ 57350 7480J 57250 7950J 57090 8660J
load net lopt_1 -pin debug_out_OBUF[3]_inst I -pin pool lopt
netloc lopt_1 1 14 1 8620 56790n
load net lopt_2 -pin debug_out_OBUF[6]_inst I -pin loader lopt
netloc lopt_2 1 7 8 4230 57170 NJ 57170 NJ 57170 NJ 57170 7020J 57050 NJ 57050 7910J 57010 8680J
load net m_axi_araddr[0] -attr @rip(#000000) 0 -port m_axi_araddr[0] -pin m_axi_araddr_OBUF[0]_inst O
load net m_axi_araddr[10] -attr @rip(#000000) 10 -port m_axi_araddr[10] -pin m_axi_araddr_OBUF[10]_inst O
load net m_axi_araddr[11] -attr @rip(#000000) 11 -port m_axi_araddr[11] -pin m_axi_araddr_OBUF[11]_inst O
load net m_axi_araddr[12] -attr @rip(#000000) 12 -port m_axi_araddr[12] -pin m_axi_araddr_OBUF[12]_inst O
load net m_axi_araddr[13] -attr @rip(#000000) 13 -port m_axi_araddr[13] -pin m_axi_araddr_OBUF[13]_inst O
load net m_axi_araddr[14] -attr @rip(#000000) 14 -port m_axi_araddr[14] -pin m_axi_araddr_OBUF[14]_inst O
load net m_axi_araddr[15] -attr @rip(#000000) 15 -port m_axi_araddr[15] -pin m_axi_araddr_OBUF[15]_inst O
load net m_axi_araddr[16] -attr @rip(#000000) 16 -port m_axi_araddr[16] -pin m_axi_araddr_OBUF[16]_inst O
load net m_axi_araddr[17] -attr @rip(#000000) 17 -port m_axi_araddr[17] -pin m_axi_araddr_OBUF[17]_inst O
load net m_axi_araddr[18] -attr @rip(#000000) 18 -port m_axi_araddr[18] -pin m_axi_araddr_OBUF[18]_inst O
load net m_axi_araddr[19] -attr @rip(#000000) 19 -port m_axi_araddr[19] -pin m_axi_araddr_OBUF[19]_inst O
load net m_axi_araddr[1] -attr @rip(#000000) 1 -port m_axi_araddr[1] -pin m_axi_araddr_OBUF[1]_inst O
load net m_axi_araddr[20] -attr @rip(#000000) 20 -port m_axi_araddr[20] -pin m_axi_araddr_OBUF[20]_inst O
load net m_axi_araddr[21] -attr @rip(#000000) 21 -port m_axi_araddr[21] -pin m_axi_araddr_OBUF[21]_inst O
load net m_axi_araddr[22] -attr @rip(#000000) 22 -port m_axi_araddr[22] -pin m_axi_araddr_OBUF[22]_inst O
load net m_axi_araddr[23] -attr @rip(#000000) 23 -port m_axi_araddr[23] -pin m_axi_araddr_OBUF[23]_inst O
load net m_axi_araddr[24] -attr @rip(#000000) 24 -port m_axi_araddr[24] -pin m_axi_araddr_OBUF[24]_inst O
load net m_axi_araddr[25] -attr @rip(#000000) 25 -port m_axi_araddr[25] -pin m_axi_araddr_OBUF[25]_inst O
load net m_axi_araddr[26] -attr @rip(#000000) 26 -port m_axi_araddr[26] -pin m_axi_araddr_OBUF[26]_inst O
load net m_axi_araddr[27] -attr @rip(#000000) 27 -port m_axi_araddr[27] -pin m_axi_araddr_OBUF[27]_inst O
load net m_axi_araddr[28] -attr @rip(#000000) 28 -port m_axi_araddr[28] -pin m_axi_araddr_OBUF[28]_inst O
load net m_axi_araddr[29] -attr @rip(#000000) 29 -port m_axi_araddr[29] -pin m_axi_araddr_OBUF[29]_inst O
load net m_axi_araddr[2] -attr @rip(#000000) 2 -port m_axi_araddr[2] -pin m_axi_araddr_OBUF[2]_inst O
load net m_axi_araddr[30] -attr @rip(#000000) 30 -port m_axi_araddr[30] -pin m_axi_araddr_OBUF[30]_inst O
load net m_axi_araddr[31] -attr @rip(#000000) 31 -port m_axi_araddr[31] -pin m_axi_araddr_OBUF[31]_inst O
load net m_axi_araddr[3] -attr @rip(#000000) 3 -port m_axi_araddr[3] -pin m_axi_araddr_OBUF[3]_inst O
load net m_axi_araddr[4] -attr @rip(#000000) 4 -port m_axi_araddr[4] -pin m_axi_araddr_OBUF[4]_inst O
load net m_axi_araddr[5] -attr @rip(#000000) 5 -port m_axi_araddr[5] -pin m_axi_araddr_OBUF[5]_inst O
load net m_axi_araddr[6] -attr @rip(#000000) 6 -port m_axi_araddr[6] -pin m_axi_araddr_OBUF[6]_inst O
load net m_axi_araddr[7] -attr @rip(#000000) 7 -port m_axi_araddr[7] -pin m_axi_araddr_OBUF[7]_inst O
load net m_axi_araddr[8] -attr @rip(#000000) 8 -port m_axi_araddr[8] -pin m_axi_araddr_OBUF[8]_inst O
load net m_axi_araddr[9] -attr @rip(#000000) 9 -port m_axi_araddr[9] -pin m_axi_araddr_OBUF[9]_inst O
load net m_axi_araddr_OBUF[0] -attr @rip(#000000) rd_addr_reg_reg[31]_0[0] -pin dma_bridge rd_addr_reg_reg[31]_0[0] -pin m_axi_araddr_OBUF[0]_inst I
load net m_axi_araddr_OBUF[10] -attr @rip(#000000) rd_addr_reg_reg[31]_0[10] -pin dma_bridge rd_addr_reg_reg[31]_0[10] -pin m_axi_araddr_OBUF[10]_inst I
load net m_axi_araddr_OBUF[11] -attr @rip(#000000) rd_addr_reg_reg[31]_0[11] -pin dma_bridge rd_addr_reg_reg[31]_0[11] -pin m_axi_araddr_OBUF[11]_inst I
load net m_axi_araddr_OBUF[12] -attr @rip(#000000) rd_addr_reg_reg[31]_0[12] -pin dma_bridge rd_addr_reg_reg[31]_0[12] -pin m_axi_araddr_OBUF[12]_inst I
load net m_axi_araddr_OBUF[13] -attr @rip(#000000) rd_addr_reg_reg[31]_0[13] -pin dma_bridge rd_addr_reg_reg[31]_0[13] -pin m_axi_araddr_OBUF[13]_inst I
load net m_axi_araddr_OBUF[14] -attr @rip(#000000) rd_addr_reg_reg[31]_0[14] -pin dma_bridge rd_addr_reg_reg[31]_0[14] -pin m_axi_araddr_OBUF[14]_inst I
load net m_axi_araddr_OBUF[15] -attr @rip(#000000) rd_addr_reg_reg[31]_0[15] -pin dma_bridge rd_addr_reg_reg[31]_0[15] -pin m_axi_araddr_OBUF[15]_inst I
load net m_axi_araddr_OBUF[16] -attr @rip(#000000) rd_addr_reg_reg[31]_0[16] -pin dma_bridge rd_addr_reg_reg[31]_0[16] -pin m_axi_araddr_OBUF[16]_inst I
load net m_axi_araddr_OBUF[17] -attr @rip(#000000) rd_addr_reg_reg[31]_0[17] -pin dma_bridge rd_addr_reg_reg[31]_0[17] -pin m_axi_araddr_OBUF[17]_inst I
load net m_axi_araddr_OBUF[18] -attr @rip(#000000) rd_addr_reg_reg[31]_0[18] -pin dma_bridge rd_addr_reg_reg[31]_0[18] -pin m_axi_araddr_OBUF[18]_inst I
load net m_axi_araddr_OBUF[19] -attr @rip(#000000) rd_addr_reg_reg[31]_0[19] -pin dma_bridge rd_addr_reg_reg[31]_0[19] -pin m_axi_araddr_OBUF[19]_inst I
load net m_axi_araddr_OBUF[1] -attr @rip(#000000) rd_addr_reg_reg[31]_0[1] -pin dma_bridge rd_addr_reg_reg[31]_0[1] -pin m_axi_araddr_OBUF[1]_inst I
load net m_axi_araddr_OBUF[20] -attr @rip(#000000) rd_addr_reg_reg[31]_0[20] -pin dma_bridge rd_addr_reg_reg[31]_0[20] -pin m_axi_araddr_OBUF[20]_inst I
load net m_axi_araddr_OBUF[21] -attr @rip(#000000) rd_addr_reg_reg[31]_0[21] -pin dma_bridge rd_addr_reg_reg[31]_0[21] -pin m_axi_araddr_OBUF[21]_inst I
load net m_axi_araddr_OBUF[22] -attr @rip(#000000) rd_addr_reg_reg[31]_0[22] -pin dma_bridge rd_addr_reg_reg[31]_0[22] -pin m_axi_araddr_OBUF[22]_inst I
load net m_axi_araddr_OBUF[23] -attr @rip(#000000) rd_addr_reg_reg[31]_0[23] -pin dma_bridge rd_addr_reg_reg[31]_0[23] -pin m_axi_araddr_OBUF[23]_inst I
load net m_axi_araddr_OBUF[24] -attr @rip(#000000) rd_addr_reg_reg[31]_0[24] -pin dma_bridge rd_addr_reg_reg[31]_0[24] -pin m_axi_araddr_OBUF[24]_inst I
load net m_axi_araddr_OBUF[25] -attr @rip(#000000) rd_addr_reg_reg[31]_0[25] -pin dma_bridge rd_addr_reg_reg[31]_0[25] -pin m_axi_araddr_OBUF[25]_inst I
load net m_axi_araddr_OBUF[26] -attr @rip(#000000) rd_addr_reg_reg[31]_0[26] -pin dma_bridge rd_addr_reg_reg[31]_0[26] -pin m_axi_araddr_OBUF[26]_inst I
load net m_axi_araddr_OBUF[27] -attr @rip(#000000) rd_addr_reg_reg[31]_0[27] -pin dma_bridge rd_addr_reg_reg[31]_0[27] -pin m_axi_araddr_OBUF[27]_inst I
load net m_axi_araddr_OBUF[28] -attr @rip(#000000) rd_addr_reg_reg[31]_0[28] -pin dma_bridge rd_addr_reg_reg[31]_0[28] -pin m_axi_araddr_OBUF[28]_inst I
load net m_axi_araddr_OBUF[29] -attr @rip(#000000) rd_addr_reg_reg[31]_0[29] -pin dma_bridge rd_addr_reg_reg[31]_0[29] -pin m_axi_araddr_OBUF[29]_inst I
load net m_axi_araddr_OBUF[2] -attr @rip(#000000) rd_addr_reg_reg[31]_0[2] -pin dma_bridge rd_addr_reg_reg[31]_0[2] -pin m_axi_araddr_OBUF[2]_inst I
load net m_axi_araddr_OBUF[30] -attr @rip(#000000) rd_addr_reg_reg[31]_0[30] -pin dma_bridge rd_addr_reg_reg[31]_0[30] -pin m_axi_araddr_OBUF[30]_inst I
load net m_axi_araddr_OBUF[31] -attr @rip(#000000) rd_addr_reg_reg[31]_0[31] -pin dma_bridge rd_addr_reg_reg[31]_0[31] -pin m_axi_araddr_OBUF[31]_inst I
load net m_axi_araddr_OBUF[3] -attr @rip(#000000) rd_addr_reg_reg[31]_0[3] -pin dma_bridge rd_addr_reg_reg[31]_0[3] -pin m_axi_araddr_OBUF[3]_inst I
load net m_axi_araddr_OBUF[4] -attr @rip(#000000) rd_addr_reg_reg[31]_0[4] -pin dma_bridge rd_addr_reg_reg[31]_0[4] -pin m_axi_araddr_OBUF[4]_inst I
load net m_axi_araddr_OBUF[5] -attr @rip(#000000) rd_addr_reg_reg[31]_0[5] -pin dma_bridge rd_addr_reg_reg[31]_0[5] -pin m_axi_araddr_OBUF[5]_inst I
load net m_axi_araddr_OBUF[6] -attr @rip(#000000) rd_addr_reg_reg[31]_0[6] -pin dma_bridge rd_addr_reg_reg[31]_0[6] -pin m_axi_araddr_OBUF[6]_inst I
load net m_axi_araddr_OBUF[7] -attr @rip(#000000) rd_addr_reg_reg[31]_0[7] -pin dma_bridge rd_addr_reg_reg[31]_0[7] -pin m_axi_araddr_OBUF[7]_inst I
load net m_axi_araddr_OBUF[8] -attr @rip(#000000) rd_addr_reg_reg[31]_0[8] -pin dma_bridge rd_addr_reg_reg[31]_0[8] -pin m_axi_araddr_OBUF[8]_inst I
load net m_axi_araddr_OBUF[9] -attr @rip(#000000) rd_addr_reg_reg[31]_0[9] -pin dma_bridge rd_addr_reg_reg[31]_0[9] -pin m_axi_araddr_OBUF[9]_inst I
load net m_axi_arlen[0] -attr @rip(#000000) 0 -port m_axi_arlen[0] -pin m_axi_arlen_OBUF[0]_inst O
load net m_axi_arlen[1] -attr @rip(#000000) 1 -port m_axi_arlen[1] -pin m_axi_arlen_OBUF[1]_inst O
load net m_axi_arlen[2] -attr @rip(#000000) 2 -port m_axi_arlen[2] -pin m_axi_arlen_OBUF[2]_inst O
load net m_axi_arlen[3] -attr @rip(#000000) 3 -port m_axi_arlen[3] -pin m_axi_arlen_OBUF[3]_inst O
load net m_axi_arlen[4] -attr @rip(#000000) 4 -port m_axi_arlen[4] -pin m_axi_arlen_OBUF[4]_inst O
load net m_axi_arlen[5] -attr @rip(#000000) 5 -port m_axi_arlen[5] -pin m_axi_arlen_OBUF[5]_inst O
load net m_axi_arlen[6] -attr @rip(#000000) 6 -port m_axi_arlen[6] -pin m_axi_arlen_OBUF[6]_inst O
load net m_axi_arlen[7] -attr @rip(#000000) 7 -port m_axi_arlen[7] -pin m_axi_arlen_OBUF[7]_inst O
load net m_axi_arready -port m_axi_arready -pin m_axi_arready_IBUF_inst I
netloc m_axi_arready 1 0 7 NJ 55680 NJ 55680 NJ 55680 NJ 55680 NJ 55680 NJ 55680 NJ
load net m_axi_arready_IBUF -pin dma_bridge m_axi_arready_IBUF -pin m_axi_arready_IBUF_inst O
netloc m_axi_arready_IBUF 1 7 1 4510J 55680n
load net m_axi_arvalid -port m_axi_arvalid -pin m_axi_arvalid_OBUF_inst O
netloc m_axi_arvalid 1 15 1 NJ 58890
load net m_axi_arvalid_OBUF -attr @rip(#000000) Q[4] -pin dma_bridge Q[4] -pin m_axi_arvalid_OBUF_inst I
load net m_axi_awaddr[0] -attr @rip(#000000) 0 -port m_axi_awaddr[0] -pin m_axi_awaddr_OBUF[0]_inst O
load net m_axi_awaddr[10] -attr @rip(#000000) 10 -port m_axi_awaddr[10] -pin m_axi_awaddr_OBUF[10]_inst O
load net m_axi_awaddr[11] -attr @rip(#000000) 11 -port m_axi_awaddr[11] -pin m_axi_awaddr_OBUF[11]_inst O
load net m_axi_awaddr[12] -attr @rip(#000000) 12 -port m_axi_awaddr[12] -pin m_axi_awaddr_OBUF[12]_inst O
load net m_axi_awaddr[13] -attr @rip(#000000) 13 -port m_axi_awaddr[13] -pin m_axi_awaddr_OBUF[13]_inst O
load net m_axi_awaddr[14] -attr @rip(#000000) 14 -port m_axi_awaddr[14] -pin m_axi_awaddr_OBUF[14]_inst O
load net m_axi_awaddr[15] -attr @rip(#000000) 15 -port m_axi_awaddr[15] -pin m_axi_awaddr_OBUF[15]_inst O
load net m_axi_awaddr[16] -attr @rip(#000000) 16 -port m_axi_awaddr[16] -pin m_axi_awaddr_OBUF[16]_inst O
load net m_axi_awaddr[17] -attr @rip(#000000) 17 -port m_axi_awaddr[17] -pin m_axi_awaddr_OBUF[17]_inst O
load net m_axi_awaddr[18] -attr @rip(#000000) 18 -port m_axi_awaddr[18] -pin m_axi_awaddr_OBUF[18]_inst O
load net m_axi_awaddr[19] -attr @rip(#000000) 19 -port m_axi_awaddr[19] -pin m_axi_awaddr_OBUF[19]_inst O
load net m_axi_awaddr[1] -attr @rip(#000000) 1 -port m_axi_awaddr[1] -pin m_axi_awaddr_OBUF[1]_inst O
load net m_axi_awaddr[20] -attr @rip(#000000) 20 -port m_axi_awaddr[20] -pin m_axi_awaddr_OBUF[20]_inst O
load net m_axi_awaddr[21] -attr @rip(#000000) 21 -port m_axi_awaddr[21] -pin m_axi_awaddr_OBUF[21]_inst O
load net m_axi_awaddr[22] -attr @rip(#000000) 22 -port m_axi_awaddr[22] -pin m_axi_awaddr_OBUF[22]_inst O
load net m_axi_awaddr[23] -attr @rip(#000000) 23 -port m_axi_awaddr[23] -pin m_axi_awaddr_OBUF[23]_inst O
load net m_axi_awaddr[24] -attr @rip(#000000) 24 -port m_axi_awaddr[24] -pin m_axi_awaddr_OBUF[24]_inst O
load net m_axi_awaddr[25] -attr @rip(#000000) 25 -port m_axi_awaddr[25] -pin m_axi_awaddr_OBUF[25]_inst O
load net m_axi_awaddr[26] -attr @rip(#000000) 26 -port m_axi_awaddr[26] -pin m_axi_awaddr_OBUF[26]_inst O
load net m_axi_awaddr[27] -attr @rip(#000000) 27 -port m_axi_awaddr[27] -pin m_axi_awaddr_OBUF[27]_inst O
load net m_axi_awaddr[28] -attr @rip(#000000) 28 -port m_axi_awaddr[28] -pin m_axi_awaddr_OBUF[28]_inst O
load net m_axi_awaddr[29] -attr @rip(#000000) 29 -port m_axi_awaddr[29] -pin m_axi_awaddr_OBUF[29]_inst O
load net m_axi_awaddr[2] -attr @rip(#000000) 2 -port m_axi_awaddr[2] -pin m_axi_awaddr_OBUF[2]_inst O
load net m_axi_awaddr[30] -attr @rip(#000000) 30 -port m_axi_awaddr[30] -pin m_axi_awaddr_OBUF[30]_inst O
load net m_axi_awaddr[31] -attr @rip(#000000) 31 -port m_axi_awaddr[31] -pin m_axi_awaddr_OBUF[31]_inst O
load net m_axi_awaddr[3] -attr @rip(#000000) 3 -port m_axi_awaddr[3] -pin m_axi_awaddr_OBUF[3]_inst O
load net m_axi_awaddr[4] -attr @rip(#000000) 4 -port m_axi_awaddr[4] -pin m_axi_awaddr_OBUF[4]_inst O
load net m_axi_awaddr[5] -attr @rip(#000000) 5 -port m_axi_awaddr[5] -pin m_axi_awaddr_OBUF[5]_inst O
load net m_axi_awaddr[6] -attr @rip(#000000) 6 -port m_axi_awaddr[6] -pin m_axi_awaddr_OBUF[6]_inst O
load net m_axi_awaddr[7] -attr @rip(#000000) 7 -port m_axi_awaddr[7] -pin m_axi_awaddr_OBUF[7]_inst O
load net m_axi_awaddr[8] -attr @rip(#000000) 8 -port m_axi_awaddr[8] -pin m_axi_awaddr_OBUF[8]_inst O
load net m_axi_awaddr[9] -attr @rip(#000000) 9 -port m_axi_awaddr[9] -pin m_axi_awaddr_OBUF[9]_inst O
load net m_axi_awaddr_OBUF[0] -attr @rip(#000000) wr_addr_reg_reg[31]_0[0] -pin dma_bridge wr_addr_reg_reg[31]_0[0] -pin m_axi_awaddr_OBUF[0]_inst I
load net m_axi_awaddr_OBUF[10] -attr @rip(#000000) wr_addr_reg_reg[31]_0[10] -pin dma_bridge wr_addr_reg_reg[31]_0[10] -pin m_axi_awaddr_OBUF[10]_inst I
load net m_axi_awaddr_OBUF[11] -attr @rip(#000000) wr_addr_reg_reg[31]_0[11] -pin dma_bridge wr_addr_reg_reg[31]_0[11] -pin m_axi_awaddr_OBUF[11]_inst I
load net m_axi_awaddr_OBUF[12] -attr @rip(#000000) wr_addr_reg_reg[31]_0[12] -pin dma_bridge wr_addr_reg_reg[31]_0[12] -pin m_axi_awaddr_OBUF[12]_inst I
load net m_axi_awaddr_OBUF[13] -attr @rip(#000000) wr_addr_reg_reg[31]_0[13] -pin dma_bridge wr_addr_reg_reg[31]_0[13] -pin m_axi_awaddr_OBUF[13]_inst I
load net m_axi_awaddr_OBUF[14] -attr @rip(#000000) wr_addr_reg_reg[31]_0[14] -pin dma_bridge wr_addr_reg_reg[31]_0[14] -pin m_axi_awaddr_OBUF[14]_inst I
load net m_axi_awaddr_OBUF[15] -attr @rip(#000000) wr_addr_reg_reg[31]_0[15] -pin dma_bridge wr_addr_reg_reg[31]_0[15] -pin m_axi_awaddr_OBUF[15]_inst I
load net m_axi_awaddr_OBUF[16] -attr @rip(#000000) wr_addr_reg_reg[31]_0[16] -pin dma_bridge wr_addr_reg_reg[31]_0[16] -pin m_axi_awaddr_OBUF[16]_inst I
load net m_axi_awaddr_OBUF[17] -attr @rip(#000000) wr_addr_reg_reg[31]_0[17] -pin dma_bridge wr_addr_reg_reg[31]_0[17] -pin m_axi_awaddr_OBUF[17]_inst I
load net m_axi_awaddr_OBUF[18] -attr @rip(#000000) wr_addr_reg_reg[31]_0[18] -pin dma_bridge wr_addr_reg_reg[31]_0[18] -pin m_axi_awaddr_OBUF[18]_inst I
load net m_axi_awaddr_OBUF[19] -attr @rip(#000000) wr_addr_reg_reg[31]_0[19] -pin dma_bridge wr_addr_reg_reg[31]_0[19] -pin m_axi_awaddr_OBUF[19]_inst I
load net m_axi_awaddr_OBUF[1] -attr @rip(#000000) wr_addr_reg_reg[31]_0[1] -pin dma_bridge wr_addr_reg_reg[31]_0[1] -pin m_axi_awaddr_OBUF[1]_inst I
load net m_axi_awaddr_OBUF[20] -attr @rip(#000000) wr_addr_reg_reg[31]_0[20] -pin dma_bridge wr_addr_reg_reg[31]_0[20] -pin m_axi_awaddr_OBUF[20]_inst I
load net m_axi_awaddr_OBUF[21] -attr @rip(#000000) wr_addr_reg_reg[31]_0[21] -pin dma_bridge wr_addr_reg_reg[31]_0[21] -pin m_axi_awaddr_OBUF[21]_inst I
load net m_axi_awaddr_OBUF[22] -attr @rip(#000000) wr_addr_reg_reg[31]_0[22] -pin dma_bridge wr_addr_reg_reg[31]_0[22] -pin m_axi_awaddr_OBUF[22]_inst I
load net m_axi_awaddr_OBUF[23] -attr @rip(#000000) wr_addr_reg_reg[31]_0[23] -pin dma_bridge wr_addr_reg_reg[31]_0[23] -pin m_axi_awaddr_OBUF[23]_inst I
load net m_axi_awaddr_OBUF[24] -attr @rip(#000000) wr_addr_reg_reg[31]_0[24] -pin dma_bridge wr_addr_reg_reg[31]_0[24] -pin m_axi_awaddr_OBUF[24]_inst I
load net m_axi_awaddr_OBUF[25] -attr @rip(#000000) wr_addr_reg_reg[31]_0[25] -pin dma_bridge wr_addr_reg_reg[31]_0[25] -pin m_axi_awaddr_OBUF[25]_inst I
load net m_axi_awaddr_OBUF[26] -attr @rip(#000000) wr_addr_reg_reg[31]_0[26] -pin dma_bridge wr_addr_reg_reg[31]_0[26] -pin m_axi_awaddr_OBUF[26]_inst I
load net m_axi_awaddr_OBUF[27] -attr @rip(#000000) wr_addr_reg_reg[31]_0[27] -pin dma_bridge wr_addr_reg_reg[31]_0[27] -pin m_axi_awaddr_OBUF[27]_inst I
load net m_axi_awaddr_OBUF[28] -attr @rip(#000000) wr_addr_reg_reg[31]_0[28] -pin dma_bridge wr_addr_reg_reg[31]_0[28] -pin m_axi_awaddr_OBUF[28]_inst I
load net m_axi_awaddr_OBUF[29] -attr @rip(#000000) wr_addr_reg_reg[31]_0[29] -pin dma_bridge wr_addr_reg_reg[31]_0[29] -pin m_axi_awaddr_OBUF[29]_inst I
load net m_axi_awaddr_OBUF[2] -attr @rip(#000000) wr_addr_reg_reg[31]_0[2] -pin dma_bridge wr_addr_reg_reg[31]_0[2] -pin m_axi_awaddr_OBUF[2]_inst I
load net m_axi_awaddr_OBUF[30] -attr @rip(#000000) wr_addr_reg_reg[31]_0[30] -pin dma_bridge wr_addr_reg_reg[31]_0[30] -pin m_axi_awaddr_OBUF[30]_inst I
load net m_axi_awaddr_OBUF[31] -attr @rip(#000000) wr_addr_reg_reg[31]_0[31] -pin dma_bridge wr_addr_reg_reg[31]_0[31] -pin m_axi_awaddr_OBUF[31]_inst I
load net m_axi_awaddr_OBUF[3] -attr @rip(#000000) wr_addr_reg_reg[31]_0[3] -pin dma_bridge wr_addr_reg_reg[31]_0[3] -pin m_axi_awaddr_OBUF[3]_inst I
load net m_axi_awaddr_OBUF[4] -attr @rip(#000000) wr_addr_reg_reg[31]_0[4] -pin dma_bridge wr_addr_reg_reg[31]_0[4] -pin m_axi_awaddr_OBUF[4]_inst I
load net m_axi_awaddr_OBUF[5] -attr @rip(#000000) wr_addr_reg_reg[31]_0[5] -pin dma_bridge wr_addr_reg_reg[31]_0[5] -pin m_axi_awaddr_OBUF[5]_inst I
load net m_axi_awaddr_OBUF[6] -attr @rip(#000000) wr_addr_reg_reg[31]_0[6] -pin dma_bridge wr_addr_reg_reg[31]_0[6] -pin m_axi_awaddr_OBUF[6]_inst I
load net m_axi_awaddr_OBUF[7] -attr @rip(#000000) wr_addr_reg_reg[31]_0[7] -pin dma_bridge wr_addr_reg_reg[31]_0[7] -pin m_axi_awaddr_OBUF[7]_inst I
load net m_axi_awaddr_OBUF[8] -attr @rip(#000000) wr_addr_reg_reg[31]_0[8] -pin dma_bridge wr_addr_reg_reg[31]_0[8] -pin m_axi_awaddr_OBUF[8]_inst I
load net m_axi_awaddr_OBUF[9] -attr @rip(#000000) wr_addr_reg_reg[31]_0[9] -pin dma_bridge wr_addr_reg_reg[31]_0[9] -pin m_axi_awaddr_OBUF[9]_inst I
load net m_axi_awlen[0] -attr @rip(#000000) 0 -port m_axi_awlen[0] -pin m_axi_awlen_OBUF[0]_inst O
load net m_axi_awlen[1] -attr @rip(#000000) 1 -port m_axi_awlen[1] -pin m_axi_awlen_OBUF[1]_inst O
load net m_axi_awlen[2] -attr @rip(#000000) 2 -port m_axi_awlen[2] -pin m_axi_awlen_OBUF[2]_inst O
load net m_axi_awlen[3] -attr @rip(#000000) 3 -port m_axi_awlen[3] -pin m_axi_awlen_OBUF[3]_inst O
load net m_axi_awlen[4] -attr @rip(#000000) 4 -port m_axi_awlen[4] -pin m_axi_awlen_OBUF[4]_inst O
load net m_axi_awlen[5] -attr @rip(#000000) 5 -port m_axi_awlen[5] -pin m_axi_awlen_OBUF[5]_inst O
load net m_axi_awlen[6] -attr @rip(#000000) 6 -port m_axi_awlen[6] -pin m_axi_awlen_OBUF[6]_inst O
load net m_axi_awlen[7] -attr @rip(#000000) 7 -port m_axi_awlen[7] -pin m_axi_awlen_OBUF[7]_inst O
load net m_axi_awlen_OBUF[0] -attr @rip(#000000) m_axi_awlen_OBUF[0] -pin dma_bridge m_axi_awlen_OBUF[0] -pin m_axi_arlen_OBUF[0]_inst I -pin m_axi_awlen_OBUF[0]_inst I
load net m_axi_awlen_OBUF[1] -attr @rip(#000000) m_axi_awlen_OBUF[1] -pin dma_bridge m_axi_awlen_OBUF[1] -pin m_axi_arlen_OBUF[1]_inst I -pin m_axi_awlen_OBUF[1]_inst I
load net m_axi_awlen_OBUF[2] -attr @rip(#000000) m_axi_awlen_OBUF[2] -pin dma_bridge m_axi_awlen_OBUF[2] -pin m_axi_arlen_OBUF[2]_inst I -pin m_axi_awlen_OBUF[2]_inst I
load net m_axi_awlen_OBUF[3] -attr @rip(#000000) m_axi_awlen_OBUF[3] -pin dma_bridge m_axi_awlen_OBUF[3] -pin m_axi_arlen_OBUF[3]_inst I -pin m_axi_awlen_OBUF[3]_inst I
load net m_axi_awlen_OBUF[4] -attr @rip(#000000) m_axi_awlen_OBUF[4] -pin dma_bridge m_axi_awlen_OBUF[4] -pin m_axi_arlen_OBUF[4]_inst I -pin m_axi_awlen_OBUF[4]_inst I
load net m_axi_awlen_OBUF[5] -attr @rip(#000000) m_axi_awlen_OBUF[5] -pin dma_bridge m_axi_awlen_OBUF[5] -pin m_axi_arlen_OBUF[5]_inst I -pin m_axi_awlen_OBUF[5]_inst I
load net m_axi_awlen_OBUF[6] -attr @rip(#000000) m_axi_awlen_OBUF[6] -pin dma_bridge m_axi_awlen_OBUF[6] -pin m_axi_arlen_OBUF[6]_inst I -pin m_axi_awlen_OBUF[6]_inst I
load net m_axi_awlen_OBUF[7] -attr @rip(#000000) m_axi_awlen_OBUF[7] -pin dma_bridge m_axi_awlen_OBUF[7] -pin m_axi_arlen_OBUF[7]_inst I -pin m_axi_awlen_OBUF[7]_inst I
load net m_axi_awready -port m_axi_awready -pin m_axi_awready_IBUF_inst I
netloc m_axi_awready 1 0 7 NJ 55710 NJ 55710 NJ 55710 1440J 55700 NJ 55700 NJ 55700 3750J
load net m_axi_awready_IBUF -pin dma_bridge m_axi_awready_IBUF -pin m_axi_awready_IBUF_inst O
netloc m_axi_awready_IBUF 1 7 1 4310J 55750n
load net m_axi_awvalid -port m_axi_awvalid -pin m_axi_awvalid_OBUF_inst O
netloc m_axi_awvalid 1 15 1 NJ 59520
load net m_axi_awvalid_OBUF -attr @rip(#000000) Q[2] -pin dma_bridge Q[2] -pin m_axi_awvalid_OBUF_inst I
load net m_axi_rready -port m_axi_rready -pin m_axi_rready_OBUF_inst O
netloc m_axi_rready 1 15 1 NJ 59590
load net m_axi_rready_OBUF -attr @rip(#000000) Q[3] -pin dma_bridge Q[3] -pin loader beat_cnt_reg[15][2] -pin m_axi_rready_OBUF_inst I
load net m_axi_rvalid -port m_axi_rvalid -pin m_axi_rvalid_IBUF_inst I
netloc m_axi_rvalid 1 0 6 NJ 56160 NJ 56160 NJ 56160 NJ 56160 NJ 56160 2750J
load net m_axi_rvalid_IBUF -pin loader m_axi_rvalid_IBUF -pin m_axi_rvalid_IBUF_inst O
netloc m_axi_rvalid_IBUF 1 6 1 3430J 55940n
load net m_axi_wdata[0] -attr @rip(#000000) 0 -port m_axi_wdata[0] -pin m_axi_wdata_OBUF[0]_inst O
load net m_axi_wdata[1] -attr @rip(#000000) 1 -port m_axi_wdata[1] -pin m_axi_wdata_OBUF[1]_inst O
load net m_axi_wdata[2] -attr @rip(#000000) 2 -port m_axi_wdata[2] -pin m_axi_wdata_OBUF[2]_inst O
load net m_axi_wdata[3] -attr @rip(#000000) 3 -port m_axi_wdata[3] -pin m_axi_wdata_OBUF[3]_inst O
load net m_axi_wdata[4] -attr @rip(#000000) 4 -port m_axi_wdata[4] -pin m_axi_wdata_OBUF[4]_inst O
load net m_axi_wdata[5] -attr @rip(#000000) 5 -port m_axi_wdata[5] -pin m_axi_wdata_OBUF[5]_inst O
load net m_axi_wdata[6] -attr @rip(#000000) 6 -port m_axi_wdata[6] -pin m_axi_wdata_OBUF[6]_inst O
load net m_axi_wdata[7] -attr @rip(#000000) 7 -port m_axi_wdata[7] -pin m_axi_wdata_OBUF[7]_inst O
load net m_axi_wready -port m_axi_wready -pin m_axi_wready_IBUF_inst I
netloc m_axi_wready 1 0 6 NJ 56190 NJ 56190 NJ 56190 1440J 56180 NJ 56180 2790J
load net m_axi_wready_IBUF -pin loader m_axi_wready_IBUF -pin m_axi_wready_IBUF_inst O
netloc m_axi_wready_IBUF 1 6 1 3430J 55980n
load net m_axi_wvalid -port m_axi_wvalid -pin m_axi_wvalid_OBUF_inst O
netloc m_axi_wvalid 1 15 1 NJ 59660
load net m_axi_wvalid_OBUF -attr @rip(#000000) Q[1] -pin dma_bridge Q[1] -pin loader beat_cnt_reg[15][1] -pin m_axi_wvalid_OBUF_inst I
load net m_axis_output_tdata[0] -attr @rip(#000000) 0 -port m_axis_output_tdata[0] -pin m_axis_output_tdata_OBUF[0]_inst O
load net m_axis_output_tdata[10] -attr @rip(#000000) 10 -port m_axis_output_tdata[10] -pin m_axis_output_tdata_OBUF[10]_inst O
load net m_axis_output_tdata[11] -attr @rip(#000000) 11 -port m_axis_output_tdata[11] -pin m_axis_output_tdata_OBUF[11]_inst O
load net m_axis_output_tdata[12] -attr @rip(#000000) 12 -port m_axis_output_tdata[12] -pin m_axis_output_tdata_OBUF[12]_inst O
load net m_axis_output_tdata[13] -attr @rip(#000000) 13 -port m_axis_output_tdata[13] -pin m_axis_output_tdata_OBUF[13]_inst O
load net m_axis_output_tdata[14] -attr @rip(#000000) 14 -port m_axis_output_tdata[14] -pin m_axis_output_tdata_OBUF[14]_inst O
load net m_axis_output_tdata[15] -attr @rip(#000000) 15 -port m_axis_output_tdata[15] -pin m_axis_output_tdata_OBUF[15]_inst O
load net m_axis_output_tdata[16] -attr @rip(#000000) 16 -port m_axis_output_tdata[16] -pin m_axis_output_tdata_OBUF[16]_inst O
load net m_axis_output_tdata[17] -attr @rip(#000000) 17 -port m_axis_output_tdata[17] -pin m_axis_output_tdata_OBUF[17]_inst O
load net m_axis_output_tdata[18] -attr @rip(#000000) 18 -port m_axis_output_tdata[18] -pin m_axis_output_tdata_OBUF[18]_inst O
load net m_axis_output_tdata[19] -attr @rip(#000000) 19 -port m_axis_output_tdata[19] -pin m_axis_output_tdata_OBUF[19]_inst O
load net m_axis_output_tdata[1] -attr @rip(#000000) 1 -port m_axis_output_tdata[1] -pin m_axis_output_tdata_OBUF[1]_inst O
load net m_axis_output_tdata[20] -attr @rip(#000000) 20 -port m_axis_output_tdata[20] -pin m_axis_output_tdata_OBUF[20]_inst O
load net m_axis_output_tdata[21] -attr @rip(#000000) 21 -port m_axis_output_tdata[21] -pin m_axis_output_tdata_OBUF[21]_inst O
load net m_axis_output_tdata[22] -attr @rip(#000000) 22 -port m_axis_output_tdata[22] -pin m_axis_output_tdata_OBUF[22]_inst O
load net m_axis_output_tdata[23] -attr @rip(#000000) 23 -port m_axis_output_tdata[23] -pin m_axis_output_tdata_OBUF[23]_inst O
load net m_axis_output_tdata[2] -attr @rip(#000000) 2 -port m_axis_output_tdata[2] -pin m_axis_output_tdata_OBUF[2]_inst O
load net m_axis_output_tdata[3] -attr @rip(#000000) 3 -port m_axis_output_tdata[3] -pin m_axis_output_tdata_OBUF[3]_inst O
load net m_axis_output_tdata[4] -attr @rip(#000000) 4 -port m_axis_output_tdata[4] -pin m_axis_output_tdata_OBUF[4]_inst O
load net m_axis_output_tdata[5] -attr @rip(#000000) 5 -port m_axis_output_tdata[5] -pin m_axis_output_tdata_OBUF[5]_inst O
load net m_axis_output_tdata[6] -attr @rip(#000000) 6 -port m_axis_output_tdata[6] -pin m_axis_output_tdata_OBUF[6]_inst O
load net m_axis_output_tdata[7] -attr @rip(#000000) 7 -port m_axis_output_tdata[7] -pin m_axis_output_tdata_OBUF[7]_inst O
load net m_axis_output_tdata[8] -attr @rip(#000000) 8 -port m_axis_output_tdata[8] -pin m_axis_output_tdata_OBUF[8]_inst O
load net m_axis_output_tdata[9] -attr @rip(#000000) 9 -port m_axis_output_tdata[9] -pin m_axis_output_tdata_OBUF[9]_inst O
load net m_axis_output_tdata_OBUF[0] -attr @rip(#000000) out_data[0] -pin m_axis_output_tdata_OBUF[0]_inst I -pin pipe_ctrl out_data[0]
load net m_axis_output_tdata_OBUF[10] -attr @rip(#000000) out_data[10] -pin m_axis_output_tdata_OBUF[10]_inst I -pin pipe_ctrl out_data[10]
load net m_axis_output_tdata_OBUF[11] -attr @rip(#000000) out_data[11] -pin m_axis_output_tdata_OBUF[11]_inst I -pin pipe_ctrl out_data[11]
load net m_axis_output_tdata_OBUF[12] -attr @rip(#000000) out_data[12] -pin m_axis_output_tdata_OBUF[12]_inst I -pin pipe_ctrl out_data[12]
load net m_axis_output_tdata_OBUF[13] -attr @rip(#000000) out_data[13] -pin m_axis_output_tdata_OBUF[13]_inst I -pin pipe_ctrl out_data[13]
load net m_axis_output_tdata_OBUF[14] -attr @rip(#000000) out_data[14] -pin m_axis_output_tdata_OBUF[14]_inst I -pin pipe_ctrl out_data[14]
load net m_axis_output_tdata_OBUF[15] -attr @rip(#000000) out_data[15] -pin m_axis_output_tdata_OBUF[15]_inst I -pin pipe_ctrl out_data[15]
load net m_axis_output_tdata_OBUF[16] -attr @rip(#000000) out_data[16] -pin m_axis_output_tdata_OBUF[16]_inst I -pin pipe_ctrl out_data[16]
load net m_axis_output_tdata_OBUF[17] -attr @rip(#000000) out_data[17] -pin m_axis_output_tdata_OBUF[17]_inst I -pin pipe_ctrl out_data[17]
load net m_axis_output_tdata_OBUF[18] -attr @rip(#000000) out_data[18] -pin m_axis_output_tdata_OBUF[18]_inst I -pin pipe_ctrl out_data[18]
load net m_axis_output_tdata_OBUF[19] -attr @rip(#000000) out_data[19] -pin m_axis_output_tdata_OBUF[19]_inst I -pin pipe_ctrl out_data[19]
load net m_axis_output_tdata_OBUF[1] -attr @rip(#000000) out_data[1] -pin m_axis_output_tdata_OBUF[1]_inst I -pin pipe_ctrl out_data[1]
load net m_axis_output_tdata_OBUF[20] -attr @rip(#000000) out_data[20] -pin m_axis_output_tdata_OBUF[20]_inst I -pin pipe_ctrl out_data[20]
load net m_axis_output_tdata_OBUF[21] -attr @rip(#000000) out_data[21] -pin m_axis_output_tdata_OBUF[21]_inst I -pin pipe_ctrl out_data[21]
load net m_axis_output_tdata_OBUF[22] -attr @rip(#000000) out_data[22] -pin m_axis_output_tdata_OBUF[22]_inst I -pin pipe_ctrl out_data[22]
load net m_axis_output_tdata_OBUF[23] -attr @rip(#000000) out_data[23] -pin m_axis_output_tdata_OBUF[23]_inst I -pin pipe_ctrl out_data[23]
load net m_axis_output_tdata_OBUF[2] -attr @rip(#000000) out_data[2] -pin m_axis_output_tdata_OBUF[2]_inst I -pin pipe_ctrl out_data[2]
load net m_axis_output_tdata_OBUF[3] -attr @rip(#000000) out_data[3] -pin m_axis_output_tdata_OBUF[3]_inst I -pin pipe_ctrl out_data[3]
load net m_axis_output_tdata_OBUF[4] -attr @rip(#000000) out_data[4] -pin m_axis_output_tdata_OBUF[4]_inst I -pin pipe_ctrl out_data[4]
load net m_axis_output_tdata_OBUF[5] -attr @rip(#000000) out_data[5] -pin m_axis_output_tdata_OBUF[5]_inst I -pin pipe_ctrl out_data[5]
load net m_axis_output_tdata_OBUF[6] -attr @rip(#000000) out_data[6] -pin m_axis_output_tdata_OBUF[6]_inst I -pin pipe_ctrl out_data[6]
load net m_axis_output_tdata_OBUF[7] -attr @rip(#000000) out_data[7] -pin m_axis_output_tdata_OBUF[7]_inst I -pin pipe_ctrl out_data[7]
load net m_axis_output_tdata_OBUF[8] -attr @rip(#000000) out_data[8] -pin m_axis_output_tdata_OBUF[8]_inst I -pin pipe_ctrl out_data[8]
load net m_axis_output_tdata_OBUF[9] -attr @rip(#000000) out_data[9] -pin m_axis_output_tdata_OBUF[9]_inst I -pin pipe_ctrl out_data[9]
load net m_axis_output_tlast -port m_axis_output_tlast -pin m_axis_output_tlast_OBUF_inst O
netloc m_axis_output_tlast 1 15 1 NJ 58190
load net m_axis_output_tready -port m_axis_output_tready -pin m_axis_output_tready_IBUF_inst I
netloc m_axis_output_tready 1 0 9 NJ 57330 NJ 57330 NJ 57330 NJ 57330 1740J 57370 2750J 57390 NJ 57390 4510J 57420 NJ
load net m_axis_output_tready_IBUF -pin dataflow m_axis_output_tready_IBUF -pin m_axis_output_tready_IBUF_inst O -pin pipe_ctrl m_axis_output_tready_IBUF
netloc m_axis_output_tready_IBUF 1 9 2 5760 56650 6460J
load net m_axis_output_tvalid -port m_axis_output_tvalid -pin m_axis_output_tvalid_OBUF_inst O
netloc m_axis_output_tvalid 1 15 1 NJ 57420
load net p_0_in[0] -pin reg_file[0][7]_i_1 O -pin reg_file_reg[0][0] CE -pin reg_file_reg[0][1] CE -pin reg_file_reg[0][2] CE -pin reg_file_reg[0][3] CE -pin reg_file_reg[0][4] CE -pin reg_file_reg[0][5] CE -pin reg_file_reg[0][6] CE -pin reg_file_reg[0][7] CE
netloc p_0_in[0] 1 3 1 1340 63800n
load net p_0_in[15] -pin reg_file[0][15]_i_1 O -pin reg_file_reg[0][10] CE -pin reg_file_reg[0][11] CE -pin reg_file_reg[0][12] CE -pin reg_file_reg[0][13] CE -pin reg_file_reg[0][14] CE -pin reg_file_reg[0][15] CE -pin reg_file_reg[0][8] CE -pin reg_file_reg[0][9] CE
netloc p_0_in[15] 1 3 1 1320 63930n
load net p_0_in[23] -pin reg_file[0][23]_i_1 O -pin reg_file_reg[0][16] CE -pin reg_file_reg[0][17] CE -pin reg_file_reg[0][18] CE -pin reg_file_reg[0][19] CE -pin reg_file_reg[0][20] CE -pin reg_file_reg[0][21] CE -pin reg_file_reg[0][22] CE -pin reg_file_reg[0][23] CE
netloc p_0_in[23] 1 3 1 1280 64060n
load net p_0_in[31] -pin reg_file[0][31]_i_1 O -pin reg_file_reg[0][24] CE -pin reg_file_reg[0][25] CE -pin reg_file_reg[0][26] CE -pin reg_file_reg[0][27] CE -pin reg_file_reg[0][28] CE -pin reg_file_reg[0][29] CE -pin reg_file_reg[0][30] CE -pin reg_file_reg[0][31] CE
netloc p_0_in[31] 1 3 1 1260 64450n
load net perf_n_0 -attr @rip(#000000) D[31] -pin perf D[31] -pin s_axi_rdata_reg_reg[31] D
load net perf_n_1 -attr @rip(#000000) D[30] -pin perf D[30] -pin s_axi_rdata_reg_reg[30] D
load net perf_n_10 -attr @rip(#000000) D[21] -pin perf D[21] -pin s_axi_rdata_reg_reg[21] D
load net perf_n_11 -attr @rip(#000000) D[20] -pin perf D[20] -pin s_axi_rdata_reg_reg[20] D
load net perf_n_12 -attr @rip(#000000) D[19] -pin perf D[19] -pin s_axi_rdata_reg_reg[19] D
load net perf_n_13 -attr @rip(#000000) D[18] -pin perf D[18] -pin s_axi_rdata_reg_reg[18] D
load net perf_n_14 -attr @rip(#000000) D[17] -pin perf D[17] -pin s_axi_rdata_reg_reg[17] D
load net perf_n_15 -attr @rip(#000000) D[16] -pin perf D[16] -pin s_axi_rdata_reg_reg[16] D
load net perf_n_16 -attr @rip(#000000) D[15] -pin perf D[15] -pin s_axi_rdata_reg_reg[15] D
load net perf_n_17 -attr @rip(#000000) D[14] -pin perf D[14] -pin s_axi_rdata_reg_reg[14] D
load net perf_n_18 -attr @rip(#000000) D[13] -pin perf D[13] -pin s_axi_rdata_reg_reg[13] D
load net perf_n_19 -attr @rip(#000000) D[12] -pin perf D[12] -pin s_axi_rdata_reg_reg[12] D
load net perf_n_2 -attr @rip(#000000) D[29] -pin perf D[29] -pin s_axi_rdata_reg_reg[29] D
load net perf_n_20 -attr @rip(#000000) D[11] -pin perf D[11] -pin s_axi_rdata_reg_reg[11] D
load net perf_n_21 -attr @rip(#000000) D[10] -pin perf D[10] -pin s_axi_rdata_reg_reg[10] D
load net perf_n_22 -attr @rip(#000000) D[9] -pin perf D[9] -pin s_axi_rdata_reg_reg[9] D
load net perf_n_23 -attr @rip(#000000) D[8] -pin perf D[8] -pin s_axi_rdata_reg_reg[8] D
load net perf_n_24 -attr @rip(#000000) D[7] -pin perf D[7] -pin s_axi_rdata_reg_reg[7] D
load net perf_n_25 -attr @rip(#000000) D[6] -pin perf D[6] -pin s_axi_rdata_reg_reg[6] D
load net perf_n_26 -attr @rip(#000000) D[5] -pin perf D[5] -pin s_axi_rdata_reg_reg[5] D
load net perf_n_27 -attr @rip(#000000) D[4] -pin perf D[4] -pin s_axi_rdata_reg_reg[4] D
load net perf_n_28 -attr @rip(#000000) D[3] -pin perf D[3] -pin s_axi_rdata_reg_reg[3] D
load net perf_n_29 -attr @rip(#000000) D[2] -pin perf D[2] -pin s_axi_rdata_reg_reg[2] D
load net perf_n_3 -attr @rip(#000000) D[28] -pin perf D[28] -pin s_axi_rdata_reg_reg[28] D
load net perf_n_30 -attr @rip(#000000) D[1] -pin perf D[1] -pin s_axi_rdata_reg_reg[1] D
load net perf_n_31 -attr @rip(#000000) D[0] -pin perf D[0] -pin s_axi_rdata_reg_reg[0] D
load net perf_n_4 -attr @rip(#000000) D[27] -pin perf D[27] -pin s_axi_rdata_reg_reg[27] D
load net perf_n_5 -attr @rip(#000000) D[26] -pin perf D[26] -pin s_axi_rdata_reg_reg[26] D
load net perf_n_6 -attr @rip(#000000) D[25] -pin perf D[25] -pin s_axi_rdata_reg_reg[25] D
load net perf_n_7 -attr @rip(#000000) D[24] -pin perf D[24] -pin s_axi_rdata_reg_reg[24] D
load net perf_n_8 -attr @rip(#000000) D[23] -pin perf D[23] -pin s_axi_rdata_reg_reg[23] D
load net perf_n_9 -attr @rip(#000000) D[22] -pin perf D[22] -pin s_axi_rdata_reg_reg[22] D
load net pipe_ctrl_n_7 -pin dataflow I8 -pin pipe_ctrl I8
netloc pipe_ctrl_n_7 1 10 1 6440 56770n
load net preproc_data[0] -attr @rip(#000000) m_axis_tdata[0] -pin pipe_ctrl stage_data_reg[0][23]_0[0] -pin preproc m_axis_tdata[0]
load net preproc_data[10] -attr @rip(#000000) m_axis_tdata[10] -pin pipe_ctrl stage_data_reg[0][23]_0[10] -pin preproc m_axis_tdata[10]
load net preproc_data[11] -attr @rip(#000000) m_axis_tdata[11] -pin pipe_ctrl stage_data_reg[0][23]_0[11] -pin preproc m_axis_tdata[11]
load net preproc_data[12] -attr @rip(#000000) m_axis_tdata[12] -pin pipe_ctrl stage_data_reg[0][23]_0[12] -pin preproc m_axis_tdata[12]
load net preproc_data[13] -attr @rip(#000000) m_axis_tdata[13] -pin pipe_ctrl stage_data_reg[0][23]_0[13] -pin preproc m_axis_tdata[13]
load net preproc_data[14] -attr @rip(#000000) m_axis_tdata[14] -pin pipe_ctrl stage_data_reg[0][23]_0[14] -pin preproc m_axis_tdata[14]
load net preproc_data[15] -attr @rip(#000000) m_axis_tdata[15] -pin pipe_ctrl stage_data_reg[0][23]_0[15] -pin preproc m_axis_tdata[15]
load net preproc_data[16] -attr @rip(#000000) m_axis_tdata[16] -pin pipe_ctrl stage_data_reg[0][23]_0[16] -pin preproc m_axis_tdata[16]
load net preproc_data[17] -attr @rip(#000000) m_axis_tdata[17] -pin pipe_ctrl stage_data_reg[0][23]_0[17] -pin preproc m_axis_tdata[17]
load net preproc_data[18] -attr @rip(#000000) m_axis_tdata[18] -pin pipe_ctrl stage_data_reg[0][23]_0[18] -pin preproc m_axis_tdata[18]
load net preproc_data[19] -attr @rip(#000000) m_axis_tdata[19] -pin pipe_ctrl stage_data_reg[0][23]_0[19] -pin preproc m_axis_tdata[19]
load net preproc_data[1] -attr @rip(#000000) m_axis_tdata[1] -pin pipe_ctrl stage_data_reg[0][23]_0[1] -pin preproc m_axis_tdata[1]
load net preproc_data[20] -attr @rip(#000000) m_axis_tdata[20] -pin pipe_ctrl stage_data_reg[0][23]_0[20] -pin preproc m_axis_tdata[20]
load net preproc_data[21] -attr @rip(#000000) m_axis_tdata[21] -pin pipe_ctrl stage_data_reg[0][23]_0[21] -pin preproc m_axis_tdata[21]
load net preproc_data[22] -attr @rip(#000000) m_axis_tdata[22] -pin pipe_ctrl stage_data_reg[0][23]_0[22] -pin preproc m_axis_tdata[22]
load net preproc_data[23] -attr @rip(#000000) m_axis_tdata[23] -pin pipe_ctrl stage_data_reg[0][23]_0[23] -pin preproc m_axis_tdata[23]
load net preproc_data[2] -attr @rip(#000000) m_axis_tdata[2] -pin pipe_ctrl stage_data_reg[0][23]_0[2] -pin preproc m_axis_tdata[2]
load net preproc_data[3] -attr @rip(#000000) m_axis_tdata[3] -pin pipe_ctrl stage_data_reg[0][23]_0[3] -pin preproc m_axis_tdata[3]
load net preproc_data[4] -attr @rip(#000000) m_axis_tdata[4] -pin pipe_ctrl stage_data_reg[0][23]_0[4] -pin preproc m_axis_tdata[4]
load net preproc_data[5] -attr @rip(#000000) m_axis_tdata[5] -pin pipe_ctrl stage_data_reg[0][23]_0[5] -pin preproc m_axis_tdata[5]
load net preproc_data[6] -attr @rip(#000000) m_axis_tdata[6] -pin pipe_ctrl stage_data_reg[0][23]_0[6] -pin preproc m_axis_tdata[6]
load net preproc_data[7] -attr @rip(#000000) m_axis_tdata[7] -pin pipe_ctrl stage_data_reg[0][23]_0[7] -pin preproc m_axis_tdata[7]
load net preproc_data[8] -attr @rip(#000000) m_axis_tdata[8] -pin pipe_ctrl stage_data_reg[0][23]_0[8] -pin preproc m_axis_tdata[8]
load net preproc_data[9] -attr @rip(#000000) m_axis_tdata[9] -pin pipe_ctrl stage_data_reg[0][23]_0[9] -pin preproc m_axis_tdata[9]
load net preproc_n_2 -attr @rip(#000000) E[0] -pin pipe_ctrl E[0] -pin preproc E[0]
netloc preproc_n_2 1 9 1 5740 56730n
load net preproc_n_3 -attr @rip(#000000) SR[0] -pin pipe_ctrl SR[0] -pin preproc SR[0]
netloc preproc_n_3 1 9 1 N 56770
load net preproc_valid -attr @rip(#000000) valid_reg_reg_0[0] -pin conv preproc_valid -pin dataflow D[0] -pin irq_ctrl irq_in_d_reg[0]_0[0] -pin pipe_ctrl stage_valid_reg[0]_0[0] -pin preproc valid_reg_reg_0[0]
netloc preproc_valid 1 5 6 2950 57350 3650 57090 NJ 57090 NJ 57090 5680 56970 6300J
load net processed_data[0] -attr @rip(#000000) 0 -port processed_data[0] -pin processed_data_OBUF[0]_inst O
load net processed_data[1] -attr @rip(#000000) 1 -port processed_data[1] -pin processed_data_OBUF[1]_inst O
load net processed_data[2] -attr @rip(#000000) 2 -port processed_data[2] -pin processed_data_OBUF[2]_inst O
load net processed_data[3] -attr @rip(#000000) 3 -port processed_data[3] -pin processed_data_OBUF[3]_inst O
load net processed_data[4] -attr @rip(#000000) 4 -port processed_data[4] -pin processed_data_OBUF[4]_inst O
load net processed_data[5] -attr @rip(#000000) 5 -port processed_data[5] -pin processed_data_OBUF[5]_inst O
load net processed_data[6] -attr @rip(#000000) 6 -port processed_data[6] -pin processed_data_OBUF[6]_inst O
load net processed_data[7] -attr @rip(#000000) 7 -port processed_data[7] -pin processed_data_OBUF[7]_inst O
load net processed_data_OBUF[0] -attr @rip(#000000) Q[0] -pin fc Q[0] -pin processed_data_OBUF[0]_inst I
load net processed_data_OBUF[1] -attr @rip(#000000) Q[1] -pin fc Q[1] -pin processed_data_OBUF[1]_inst I
load net processed_data_OBUF[2] -attr @rip(#000000) Q[2] -pin fc Q[2] -pin processed_data_OBUF[2]_inst I
load net processed_data_OBUF[3] -attr @rip(#000000) Q[3] -pin fc Q[3] -pin processed_data_OBUF[3]_inst I
load net processed_data_OBUF[4] -attr @rip(#000000) Q[4] -pin fc Q[4] -pin processed_data_OBUF[4]_inst I
load net processed_data_OBUF[5] -attr @rip(#000000) Q[5] -pin fc Q[5] -pin processed_data_OBUF[5]_inst I
load net processed_data_OBUF[6] -attr @rip(#000000) Q[6] -pin fc Q[6] -pin processed_data_OBUF[6]_inst I
load net processed_data_OBUF[7] -attr @rip(#000000) Q[7] -pin fc Q[7] -pin processed_data_OBUF[7]_inst I
load net reg_file[0][31]_i_2_n_0 -pin reg_file[0][15]_i_1 I3 -pin reg_file[0][23]_i_1 I3 -pin reg_file[0][31]_i_1 I3 -pin reg_file[0][31]_i_2 O -pin reg_file[0][7]_i_1 I3 -pin reg_file[2][15]_i_1 I3 -pin reg_file[2][23]_i_1 I3 -pin reg_file[2][31]_i_1 I3 -pin reg_file[2][7]_i_1 I3 -pin reg_file[4][15]_i_1 I3 -pin reg_file[4][23]_i_1 I3 -pin reg_file[4][31]_i_1 I3 -pin reg_file[4][7]_i_1 I3 -pin reg_file[6][15]_i_1 I3 -pin reg_file[6][23]_i_1 I3 -pin reg_file[6][31]_i_1 I3 -pin reg_file[6][7]_i_1 I3
netloc reg_file[0][31]_i_2_n_0 1 2 1 680 55070n
load net reg_file[10][15]_i_1_n_0 -pin reg_file[10][15]_i_1 O -pin reg_file_reg[10][10] CE -pin reg_file_reg[10][11] CE -pin reg_file_reg[10][12] CE -pin reg_file_reg[10][13] CE -pin reg_file_reg[10][14] CE -pin reg_file_reg[10][15] CE -pin reg_file_reg[10][8] CE -pin reg_file_reg[10][9] CE
netloc reg_file[10][15]_i_1_n_0 1 3 1 1460 28870n
load net reg_file[10][23]_i_1_n_0 -pin reg_file[10][23]_i_1 O -pin reg_file_reg[10][16] CE -pin reg_file_reg[10][17] CE -pin reg_file_reg[10][18] CE -pin reg_file_reg[10][19] CE -pin reg_file_reg[10][20] CE -pin reg_file_reg[10][21] CE -pin reg_file_reg[10][22] CE -pin reg_file_reg[10][23] CE
netloc reg_file[10][23]_i_1_n_0 1 3 1 1460 30070n
load net reg_file[10][31]_i_1_n_0 -pin reg_file[10][31]_i_1 O -pin reg_file_reg[10][24] CE -pin reg_file_reg[10][25] CE -pin reg_file_reg[10][26] CE -pin reg_file_reg[10][27] CE -pin reg_file_reg[10][28] CE -pin reg_file_reg[10][29] CE -pin reg_file_reg[10][30] CE -pin reg_file_reg[10][31] CE
netloc reg_file[10][31]_i_1_n_0 1 3 1 1460 31270n
load net reg_file[10][7]_i_1_n_0 -pin reg_file[10][7]_i_1 O -pin reg_file_reg[10][0] CE -pin reg_file_reg[10][1] CE -pin reg_file_reg[10][2] CE -pin reg_file_reg[10][3] CE -pin reg_file_reg[10][4] CE -pin reg_file_reg[10][5] CE -pin reg_file_reg[10][6] CE -pin reg_file_reg[10][7] CE
netloc reg_file[10][7]_i_1_n_0 1 3 1 1460 27670n
load net reg_file[11][15]_i_1_n_0 -pin reg_file[11][15]_i_1 O -pin reg_file_reg[11][10] CE -pin reg_file_reg[11][11] CE -pin reg_file_reg[11][12] CE -pin reg_file_reg[11][13] CE -pin reg_file_reg[11][14] CE -pin reg_file_reg[11][15] CE -pin reg_file_reg[11][8] CE -pin reg_file_reg[11][9] CE
netloc reg_file[11][15]_i_1_n_0 1 3 1 1460 15670n
load net reg_file[11][23]_i_1_n_0 -pin reg_file[11][23]_i_1 O -pin reg_file_reg[11][16] CE -pin reg_file_reg[11][17] CE -pin reg_file_reg[11][18] CE -pin reg_file_reg[11][19] CE -pin reg_file_reg[11][20] CE -pin reg_file_reg[11][21] CE -pin reg_file_reg[11][22] CE -pin reg_file_reg[11][23] CE
netloc reg_file[11][23]_i_1_n_0 1 3 1 1460 16870n
load net reg_file[11][31]_i_1_n_0 -pin reg_file[11][31]_i_1 O -pin reg_file_reg[11][24] CE -pin reg_file_reg[11][25] CE -pin reg_file_reg[11][26] CE -pin reg_file_reg[11][27] CE -pin reg_file_reg[11][28] CE -pin reg_file_reg[11][29] CE -pin reg_file_reg[11][30] CE -pin reg_file_reg[11][31] CE
netloc reg_file[11][31]_i_1_n_0 1 3 1 1460 18070n
load net reg_file[11][7]_i_1_n_0 -pin reg_file[11][7]_i_1 O -pin reg_file_reg[11][0] CE -pin reg_file_reg[11][1] CE -pin reg_file_reg[11][2] CE -pin reg_file_reg[11][3] CE -pin reg_file_reg[11][4] CE -pin reg_file_reg[11][5] CE -pin reg_file_reg[11][6] CE -pin reg_file_reg[11][7] CE
netloc reg_file[11][7]_i_1_n_0 1 3 1 1460 14470n
load net reg_file[12][15]_i_1_n_0 -pin reg_file[12][15]_i_1 O -pin reg_file_reg[12][10] CE -pin reg_file_reg[12][11] CE -pin reg_file_reg[12][12] CE -pin reg_file_reg[12][13] CE -pin reg_file_reg[12][14] CE -pin reg_file_reg[12][15] CE -pin reg_file_reg[12][8] CE -pin reg_file_reg[12][9] CE
netloc reg_file[12][15]_i_1_n_0 1 3 1 1140 49270n
load net reg_file[12][23]_i_1_n_0 -pin reg_file[12][23]_i_1 O -pin reg_file_reg[12][16] CE -pin reg_file_reg[12][17] CE -pin reg_file_reg[12][18] CE -pin reg_file_reg[12][19] CE -pin reg_file_reg[12][20] CE -pin reg_file_reg[12][21] CE -pin reg_file_reg[12][22] CE -pin reg_file_reg[12][23] CE
netloc reg_file[12][23]_i_1_n_0 1 3 1 1140 50470n
load net reg_file[12][31]_i_1_n_0 -pin reg_file[12][31]_i_1 O -pin reg_file_reg[12][24] CE -pin reg_file_reg[12][25] CE -pin reg_file_reg[12][26] CE -pin reg_file_reg[12][27] CE -pin reg_file_reg[12][28] CE -pin reg_file_reg[12][29] CE -pin reg_file_reg[12][30] CE -pin reg_file_reg[12][31] CE
netloc reg_file[12][31]_i_1_n_0 1 3 1 1140 54070n
load net reg_file[12][7]_i_1_n_0 -pin reg_file[12][7]_i_1 O -pin reg_file_reg[12][0] CE -pin reg_file_reg[12][1] CE -pin reg_file_reg[12][2] CE -pin reg_file_reg[12][3] CE -pin reg_file_reg[12][4] CE -pin reg_file_reg[12][5] CE -pin reg_file_reg[12][6] CE -pin reg_file_reg[12][7] CE
netloc reg_file[12][7]_i_1_n_0 1 3 1 1140 48070n
load net reg_file[13][15]_i_1_n_0 -pin reg_file[13][15]_i_1 O -pin reg_file_reg[13][10] CE -pin reg_file_reg[13][11] CE -pin reg_file_reg[13][12] CE -pin reg_file_reg[13][13] CE -pin reg_file_reg[13][14] CE -pin reg_file_reg[13][15] CE -pin reg_file_reg[13][8] CE -pin reg_file_reg[13][9] CE
netloc reg_file[13][15]_i_1_n_0 1 3 1 1460 20470n
load net reg_file[13][23]_i_1_n_0 -pin reg_file[13][23]_i_1 O -pin reg_file_reg[13][16] CE -pin reg_file_reg[13][17] CE -pin reg_file_reg[13][18] CE -pin reg_file_reg[13][19] CE -pin reg_file_reg[13][20] CE -pin reg_file_reg[13][21] CE -pin reg_file_reg[13][22] CE -pin reg_file_reg[13][23] CE
netloc reg_file[13][23]_i_1_n_0 1 3 1 1460 21670n
load net reg_file[13][31]_i_1_n_0 -pin reg_file[13][31]_i_1 O -pin reg_file_reg[13][24] CE -pin reg_file_reg[13][25] CE -pin reg_file_reg[13][26] CE -pin reg_file_reg[13][27] CE -pin reg_file_reg[13][28] CE -pin reg_file_reg[13][29] CE -pin reg_file_reg[13][30] CE -pin reg_file_reg[13][31] CE
netloc reg_file[13][31]_i_1_n_0 1 3 1 1460 32470n
load net reg_file[13][7]_i_1_n_0 -pin reg_file[13][7]_i_1 O -pin reg_file_reg[13][0] CE -pin reg_file_reg[13][1] CE -pin reg_file_reg[13][2] CE -pin reg_file_reg[13][3] CE -pin reg_file_reg[13][4] CE -pin reg_file_reg[13][5] CE -pin reg_file_reg[13][6] CE -pin reg_file_reg[13][7] CE
netloc reg_file[13][7]_i_1_n_0 1 3 1 1460 19270n
load net reg_file[14][15]_i_1_n_0 -pin reg_file[14][15]_i_1 O -pin reg_file_reg[14][10] CE -pin reg_file_reg[14][11] CE -pin reg_file_reg[14][12] CE -pin reg_file_reg[14][13] CE -pin reg_file_reg[14][14] CE -pin reg_file_reg[14][15] CE -pin reg_file_reg[14][8] CE -pin reg_file_reg[14][9] CE
netloc reg_file[14][15]_i_1_n_0 1 3 1 1140 43270n
load net reg_file[14][23]_i_1_n_0 -pin reg_file[14][23]_i_1 O -pin reg_file_reg[14][16] CE -pin reg_file_reg[14][17] CE -pin reg_file_reg[14][18] CE -pin reg_file_reg[14][19] CE -pin reg_file_reg[14][20] CE -pin reg_file_reg[14][21] CE -pin reg_file_reg[14][22] CE -pin reg_file_reg[14][23] CE
netloc reg_file[14][23]_i_1_n_0 1 3 1 1140 44470n
load net reg_file[14][31]_i_1_n_0 -pin reg_file[14][31]_i_1 O -pin reg_file_reg[14][24] CE -pin reg_file_reg[14][25] CE -pin reg_file_reg[14][26] CE -pin reg_file_reg[14][27] CE -pin reg_file_reg[14][28] CE -pin reg_file_reg[14][29] CE -pin reg_file_reg[14][30] CE -pin reg_file_reg[14][31] CE
netloc reg_file[14][31]_i_1_n_0 1 3 1 1140 46870n
load net reg_file[14][7]_i_1_n_0 -pin reg_file[14][7]_i_1 O -pin reg_file_reg[14][0] CE -pin reg_file_reg[14][1] CE -pin reg_file_reg[14][2] CE -pin reg_file_reg[14][3] CE -pin reg_file_reg[14][4] CE -pin reg_file_reg[14][5] CE -pin reg_file_reg[14][6] CE -pin reg_file_reg[14][7] CE
netloc reg_file[14][7]_i_1_n_0 1 3 1 1140 42070n
load net reg_file[15][15]_i_1_n_0 -pin reg_file[15][15]_i_1 O -pin reg_file_reg[15][10] CE -pin reg_file_reg[15][11] CE -pin reg_file_reg[15][12] CE -pin reg_file_reg[15][13] CE -pin reg_file_reg[15][14] CE -pin reg_file_reg[15][15] CE -pin reg_file_reg[15][8] CE -pin reg_file_reg[15][9] CE
netloc reg_file[15][15]_i_1_n_0 1 3 1 1460 24070n
load net reg_file[15][23]_i_1_n_0 -pin reg_file[15][23]_i_1 O -pin reg_file_reg[15][16] CE -pin reg_file_reg[15][17] CE -pin reg_file_reg[15][18] CE -pin reg_file_reg[15][19] CE -pin reg_file_reg[15][20] CE -pin reg_file_reg[15][21] CE -pin reg_file_reg[15][22] CE -pin reg_file_reg[15][23] CE
netloc reg_file[15][23]_i_1_n_0 1 3 1 1460 25270n
load net reg_file[15][31]_i_1_n_0 -pin reg_file[15][31]_i_1 O -pin reg_file_reg[15][24] CE -pin reg_file_reg[15][25] CE -pin reg_file_reg[15][26] CE -pin reg_file_reg[15][27] CE -pin reg_file_reg[15][28] CE -pin reg_file_reg[15][29] CE -pin reg_file_reg[15][30] CE -pin reg_file_reg[15][31] CE
netloc reg_file[15][31]_i_1_n_0 1 3 1 1460 26470n
load net reg_file[15][7]_i_1_n_0 -pin reg_file[15][7]_i_1 O -pin reg_file_reg[15][0] CE -pin reg_file_reg[15][1] CE -pin reg_file_reg[15][2] CE -pin reg_file_reg[15][3] CE -pin reg_file_reg[15][4] CE -pin reg_file_reg[15][5] CE -pin reg_file_reg[15][6] CE -pin reg_file_reg[15][7] CE
netloc reg_file[15][7]_i_1_n_0 1 3 1 1460 22870n
load net reg_file[1][15]_i_1_n_0 -pin reg_file[1][15]_i_1 O -pin reg_file_reg[1][10] CE -pin reg_file_reg[1][11] CE -pin reg_file_reg[1][12] CE -pin reg_file_reg[1][13] CE -pin reg_file_reg[1][14] CE -pin reg_file_reg[1][15] CE -pin reg_file_reg[1][8] CE -pin reg_file_reg[1][9] CE
netloc reg_file[1][15]_i_1_n_0 1 3 1 1160 1270n
load net reg_file[1][23]_i_1_n_0 -pin reg_file[1][23]_i_1 O -pin reg_file_reg[1][16] CE -pin reg_file_reg[1][17] CE -pin reg_file_reg[1][18] CE -pin reg_file_reg[1][19] CE -pin reg_file_reg[1][20] CE -pin reg_file_reg[1][21] CE -pin reg_file_reg[1][22] CE -pin reg_file_reg[1][23] CE
netloc reg_file[1][23]_i_1_n_0 1 3 1 1280 4870n
load net reg_file[1][31]_i_1_n_0 -pin reg_file[1][31]_i_1 O -pin reg_file_reg[1][24] CE -pin reg_file_reg[1][25] CE -pin reg_file_reg[1][26] CE -pin reg_file_reg[1][27] CE -pin reg_file_reg[1][28] CE -pin reg_file_reg[1][29] CE -pin reg_file_reg[1][30] CE -pin reg_file_reg[1][31] CE
netloc reg_file[1][31]_i_1_n_0 1 3 1 1140 7270n
load net reg_file[1][31]_i_2_n_0 -pin reg_file[1][15]_i_1 I3 -pin reg_file[1][23]_i_1 I3 -pin reg_file[1][31]_i_1 I3 -pin reg_file[1][31]_i_2 O -pin reg_file[1][7]_i_1 I3 -pin reg_file[3][15]_i_1 I3 -pin reg_file[3][23]_i_1 I3 -pin reg_file[3][31]_i_1 I3 -pin reg_file[3][7]_i_1 I3 -pin reg_file[5][15]_i_1 I3 -pin reg_file[5][23]_i_1 I3 -pin reg_file[5][31]_i_1 I3 -pin reg_file[5][7]_i_1 I3 -pin reg_file[7][15]_i_1 I3 -pin reg_file[7][23]_i_1 I3 -pin reg_file[7][31]_i_1 I3 -pin reg_file[7][7]_i_1 I3
netloc reg_file[1][31]_i_2_n_0 1 2 1 700 6030n
load net reg_file[1][7]_i_1_n_0 -pin reg_file[1][7]_i_1 O -pin reg_file_reg[1][0] CE -pin reg_file_reg[1][1] CE -pin reg_file_reg[1][2] CE -pin reg_file_reg[1][3] CE -pin reg_file_reg[1][4] CE -pin reg_file_reg[1][5] CE -pin reg_file_reg[1][6] CE -pin reg_file_reg[1][7] CE
netloc reg_file[1][7]_i_1_n_0 1 3 1 1140 70n
load net reg_file[2][15]_i_1_n_0 -pin reg_file[2][15]_i_1 O -pin reg_file_reg[2][10] CE -pin reg_file_reg[2][11] CE -pin reg_file_reg[2][12] CE -pin reg_file_reg[2][13] CE -pin reg_file_reg[2][14] CE -pin reg_file_reg[2][15] CE -pin reg_file_reg[2][8] CE -pin reg_file_reg[2][9] CE
netloc reg_file[2][15]_i_1_n_0 1 3 1 1140 59500n
load net reg_file[2][23]_i_1_n_0 -pin reg_file[2][23]_i_1 O -pin reg_file_reg[2][16] CE -pin reg_file_reg[2][17] CE -pin reg_file_reg[2][18] CE -pin reg_file_reg[2][19] CE -pin reg_file_reg[2][20] CE -pin reg_file_reg[2][21] CE -pin reg_file_reg[2][22] CE -pin reg_file_reg[2][23] CE
netloc reg_file[2][23]_i_1_n_0 1 3 1 1400 60700n
load net reg_file[2][31]_i_1_n_0 -pin reg_file[2][31]_i_1 O -pin reg_file_reg[2][24] CE -pin reg_file_reg[2][25] CE -pin reg_file_reg[2][26] CE -pin reg_file_reg[2][27] CE -pin reg_file_reg[2][28] CE -pin reg_file_reg[2][29] CE -pin reg_file_reg[2][30] CE -pin reg_file_reg[2][31] CE
netloc reg_file[2][31]_i_1_n_0 1 3 1 1440 62460n
load net reg_file[2][7]_i_1_n_0 -pin reg_file[2][7]_i_1 O -pin reg_file_reg[2][0] CE -pin reg_file_reg[2][1] CE -pin reg_file_reg[2][2] CE -pin reg_file_reg[2][3] CE -pin reg_file_reg[2][4] CE -pin reg_file_reg[2][5] CE -pin reg_file_reg[2][6] CE -pin reg_file_reg[2][7] CE
netloc reg_file[2][7]_i_1_n_0 1 3 1 1140 58300n
load net reg_file[3][15]_i_1_n_0 -pin reg_file[3][15]_i_1 O -pin reg_file_reg[3][10] CE -pin reg_file_reg[3][11] CE -pin reg_file_reg[3][12] CE -pin reg_file_reg[3][13] CE -pin reg_file_reg[3][14] CE -pin reg_file_reg[3][15] CE -pin reg_file_reg[3][8] CE -pin reg_file_reg[3][9] CE
netloc reg_file[3][15]_i_1_n_0 1 3 1 1240 3670n
load net reg_file[3][23]_i_1_n_0 -pin reg_file[3][23]_i_1 O -pin reg_file_reg[3][16] CE -pin reg_file_reg[3][17] CE -pin reg_file_reg[3][18] CE -pin reg_file_reg[3][19] CE -pin reg_file_reg[3][20] CE -pin reg_file_reg[3][21] CE -pin reg_file_reg[3][22] CE -pin reg_file_reg[3][23] CE
netloc reg_file[3][23]_i_1_n_0 1 3 1 1340 6070n
load net reg_file[3][31]_i_1_n_0 -pin reg_file[3][31]_i_1 O -pin reg_file_reg[3][24] CE -pin reg_file_reg[3][25] CE -pin reg_file_reg[3][26] CE -pin reg_file_reg[3][27] CE -pin reg_file_reg[3][28] CE -pin reg_file_reg[3][29] CE -pin reg_file_reg[3][30] CE -pin reg_file_reg[3][31] CE
netloc reg_file[3][31]_i_1_n_0 1 3 1 1460 8470n
load net reg_file[3][7]_i_1_n_0 -pin reg_file[3][7]_i_1 O -pin reg_file_reg[3][0] CE -pin reg_file_reg[3][1] CE -pin reg_file_reg[3][2] CE -pin reg_file_reg[3][3] CE -pin reg_file_reg[3][4] CE -pin reg_file_reg[3][5] CE -pin reg_file_reg[3][6] CE -pin reg_file_reg[3][7] CE
netloc reg_file[3][7]_i_1_n_0 1 3 1 1180 2470n
load net reg_file[4][15]_i_1_n_0 -pin reg_file[4][15]_i_1 O -pin reg_file_reg[4][10] CE -pin reg_file_reg[4][11] CE -pin reg_file_reg[4][12] CE -pin reg_file_reg[4][13] CE -pin reg_file_reg[4][14] CE -pin reg_file_reg[4][15] CE -pin reg_file_reg[4][8] CE -pin reg_file_reg[4][9] CE
netloc reg_file[4][15]_i_1_n_0 1 3 1 1460 64860n
load net reg_file[4][23]_i_1_n_0 -pin reg_file[4][23]_i_1 O -pin reg_file_reg[4][16] CE -pin reg_file_reg[4][17] CE -pin reg_file_reg[4][18] CE -pin reg_file_reg[4][19] CE -pin reg_file_reg[4][20] CE -pin reg_file_reg[4][21] CE -pin reg_file_reg[4][22] CE -pin reg_file_reg[4][23] CE
netloc reg_file[4][23]_i_1_n_0 1 3 1 1220 65240n
load net reg_file[4][31]_i_1_n_0 -pin reg_file[4][31]_i_1 O -pin reg_file_reg[4][24] CE -pin reg_file_reg[4][25] CE -pin reg_file_reg[4][26] CE -pin reg_file_reg[4][27] CE -pin reg_file_reg[4][28] CE -pin reg_file_reg[4][29] CE -pin reg_file_reg[4][30] CE -pin reg_file_reg[4][31] CE
netloc reg_file[4][31]_i_1_n_0 1 3 1 1180 65370n
load net reg_file[4][7]_i_1_n_0 -pin reg_file[4][7]_i_1 O -pin reg_file_reg[4][0] CE -pin reg_file_reg[4][1] CE -pin reg_file_reg[4][2] CE -pin reg_file_reg[4][3] CE -pin reg_file_reg[4][4] CE -pin reg_file_reg[4][5] CE -pin reg_file_reg[4][6] CE -pin reg_file_reg[4][7] CE
netloc reg_file[4][7]_i_1_n_0 1 3 1 1460 63660n
load net reg_file[5][15]_i_1_n_0 -pin reg_file[5][15]_i_1 O -pin reg_file_reg[5][10] CE -pin reg_file_reg[5][11] CE -pin reg_file_reg[5][12] CE -pin reg_file_reg[5][13] CE -pin reg_file_reg[5][14] CE -pin reg_file_reg[5][15] CE -pin reg_file_reg[5][8] CE -pin reg_file_reg[5][9] CE
netloc reg_file[5][15]_i_1_n_0 1 3 1 1460 34870n
load net reg_file[5][23]_i_1_n_0 -pin reg_file[5][23]_i_1 O -pin reg_file_reg[5][16] CE -pin reg_file_reg[5][17] CE -pin reg_file_reg[5][18] CE -pin reg_file_reg[5][19] CE -pin reg_file_reg[5][20] CE -pin reg_file_reg[5][21] CE -pin reg_file_reg[5][22] CE -pin reg_file_reg[5][23] CE
netloc reg_file[5][23]_i_1_n_0 1 3 1 1460 36070n
load net reg_file[5][31]_i_1_n_0 -pin reg_file[5][31]_i_1 O -pin reg_file_reg[5][24] CE -pin reg_file_reg[5][25] CE -pin reg_file_reg[5][26] CE -pin reg_file_reg[5][27] CE -pin reg_file_reg[5][28] CE -pin reg_file_reg[5][29] CE -pin reg_file_reg[5][30] CE -pin reg_file_reg[5][31] CE
netloc reg_file[5][31]_i_1_n_0 1 3 1 1140 45670n
load net reg_file[5][7]_i_1_n_0 -pin reg_file[5][7]_i_1 O -pin reg_file_reg[5][0] CE -pin reg_file_reg[5][1] CE -pin reg_file_reg[5][2] CE -pin reg_file_reg[5][3] CE -pin reg_file_reg[5][4] CE -pin reg_file_reg[5][5] CE -pin reg_file_reg[5][6] CE -pin reg_file_reg[5][7] CE
netloc reg_file[5][7]_i_1_n_0 1 3 1 1460 33670n
load net reg_file[6][15]_i_1_n_0 -pin reg_file[6][15]_i_1 O -pin reg_file_reg[6][10] CE -pin reg_file_reg[6][11] CE -pin reg_file_reg[6][12] CE -pin reg_file_reg[6][13] CE -pin reg_file_reg[6][14] CE -pin reg_file_reg[6][15] CE -pin reg_file_reg[6][8] CE -pin reg_file_reg[6][9] CE
netloc reg_file[6][15]_i_1_n_0 1 3 1 1200 64850n
load net reg_file[6][23]_i_1_n_0 -pin reg_file[6][23]_i_1 O -pin reg_file_reg[6][16] CE -pin reg_file_reg[6][17] CE -pin reg_file_reg[6][18] CE -pin reg_file_reg[6][19] CE -pin reg_file_reg[6][20] CE -pin reg_file_reg[6][21] CE -pin reg_file_reg[6][22] CE -pin reg_file_reg[6][23] CE
netloc reg_file[6][23]_i_1_n_0 1 3 1 1160 64980n
load net reg_file[6][31]_i_1_n_0 -pin reg_file[6][31]_i_1 O -pin reg_file_reg[6][24] CE -pin reg_file_reg[6][25] CE -pin reg_file_reg[6][26] CE -pin reg_file_reg[6][27] CE -pin reg_file_reg[6][28] CE -pin reg_file_reg[6][29] CE -pin reg_file_reg[6][30] CE -pin reg_file_reg[6][31] CE
netloc reg_file[6][31]_i_1_n_0 1 3 1 1140 65500n
load net reg_file[6][7]_i_1_n_0 -pin reg_file[6][7]_i_1 O -pin reg_file_reg[6][0] CE -pin reg_file_reg[6][1] CE -pin reg_file_reg[6][2] CE -pin reg_file_reg[6][3] CE -pin reg_file_reg[6][4] CE -pin reg_file_reg[6][5] CE -pin reg_file_reg[6][6] CE -pin reg_file_reg[6][7] CE
netloc reg_file[6][7]_i_1_n_0 1 3 1 1240 64580n
load net reg_file[7][15]_i_1_n_0 -pin reg_file[7][15]_i_1 O -pin reg_file_reg[7][10] CE -pin reg_file_reg[7][11] CE -pin reg_file_reg[7][12] CE -pin reg_file_reg[7][13] CE -pin reg_file_reg[7][14] CE -pin reg_file_reg[7][15] CE -pin reg_file_reg[7][8] CE -pin reg_file_reg[7][9] CE
netloc reg_file[7][15]_i_1_n_0 1 3 1 1460 38470n
load net reg_file[7][23]_i_1_n_0 -pin reg_file[7][23]_i_1 O -pin reg_file_reg[7][16] CE -pin reg_file_reg[7][17] CE -pin reg_file_reg[7][18] CE -pin reg_file_reg[7][19] CE -pin reg_file_reg[7][20] CE -pin reg_file_reg[7][21] CE -pin reg_file_reg[7][22] CE -pin reg_file_reg[7][23] CE
netloc reg_file[7][23]_i_1_n_0 1 3 1 1460 39670n
load net reg_file[7][31]_i_1_n_0 -pin reg_file[7][31]_i_1 O -pin reg_file_reg[7][24] CE -pin reg_file_reg[7][25] CE -pin reg_file_reg[7][26] CE -pin reg_file_reg[7][27] CE -pin reg_file_reg[7][28] CE -pin reg_file_reg[7][29] CE -pin reg_file_reg[7][30] CE -pin reg_file_reg[7][31] CE
netloc reg_file[7][31]_i_1_n_0 1 3 1 1460 40870n
load net reg_file[7][7]_i_1_n_0 -pin reg_file[7][7]_i_1 O -pin reg_file_reg[7][0] CE -pin reg_file_reg[7][1] CE -pin reg_file_reg[7][2] CE -pin reg_file_reg[7][3] CE -pin reg_file_reg[7][4] CE -pin reg_file_reg[7][5] CE -pin reg_file_reg[7][6] CE -pin reg_file_reg[7][7] CE
netloc reg_file[7][7]_i_1_n_0 1 3 1 1460 37270n
load net reg_file[8][15]_i_1_n_0 -pin reg_file[8][15]_i_1 O -pin reg_file_reg[8][10] CE -pin reg_file_reg[8][11] CE -pin reg_file_reg[8][12] CE -pin reg_file_reg[8][13] CE -pin reg_file_reg[8][14] CE -pin reg_file_reg[8][15] CE -pin reg_file_reg[8][8] CE -pin reg_file_reg[8][9] CE
netloc reg_file[8][15]_i_1_n_0 1 3 1 1140 52870n
load net reg_file[8][23]_i_1_n_0 -pin reg_file[8][23]_i_1 O -pin reg_file_reg[8][16] CE -pin reg_file_reg[8][17] CE -pin reg_file_reg[8][18] CE -pin reg_file_reg[8][19] CE -pin reg_file_reg[8][20] CE -pin reg_file_reg[8][21] CE -pin reg_file_reg[8][22] CE -pin reg_file_reg[8][23] CE
netloc reg_file[8][23]_i_1_n_0 1 3 1 1460 55280n
load net reg_file[8][31]_i_1_n_0 -pin reg_file[8][31]_i_1 O -pin reg_file_reg[8][24] CE -pin reg_file_reg[8][25] CE -pin reg_file_reg[8][26] CE -pin reg_file_reg[8][27] CE -pin reg_file_reg[8][28] CE -pin reg_file_reg[8][29] CE -pin reg_file_reg[8][30] CE -pin reg_file_reg[8][31] CE
netloc reg_file[8][31]_i_1_n_0 1 3 1 1340 57080n
load net reg_file[8][31]_i_2_n_0 -pin reg_file[10][15]_i_1 I3 -pin reg_file[10][23]_i_1 I3 -pin reg_file[10][31]_i_1 I3 -pin reg_file[10][7]_i_1 I3 -pin reg_file[12][15]_i_1 I3 -pin reg_file[12][23]_i_1 I3 -pin reg_file[12][31]_i_1 I3 -pin reg_file[12][7]_i_1 I3 -pin reg_file[14][15]_i_1 I3 -pin reg_file[14][23]_i_1 I3 -pin reg_file[14][31]_i_1 I3 -pin reg_file[14][7]_i_1 I3 -pin reg_file[8][15]_i_1 I3 -pin reg_file[8][23]_i_1 I3 -pin reg_file[8][31]_i_1 I3 -pin reg_file[8][31]_i_2 O -pin reg_file[8][7]_i_1 I3
netloc reg_file[8][31]_i_2_n_0 1 2 1 800 28760n
load net reg_file[8][7]_i_1_n_0 -pin reg_file[8][7]_i_1 O -pin reg_file_reg[8][0] CE -pin reg_file_reg[8][1] CE -pin reg_file_reg[8][2] CE -pin reg_file_reg[8][3] CE -pin reg_file_reg[8][4] CE -pin reg_file_reg[8][5] CE -pin reg_file_reg[8][6] CE -pin reg_file_reg[8][7] CE
netloc reg_file[8][7]_i_1_n_0 1 3 1 1140 51670n
load net reg_file[9][15]_i_1_n_0 -pin reg_file[9][15]_i_1 O -pin reg_file_reg[9][10] CE -pin reg_file_reg[9][11] CE -pin reg_file_reg[9][12] CE -pin reg_file_reg[9][13] CE -pin reg_file_reg[9][14] CE -pin reg_file_reg[9][15] CE -pin reg_file_reg[9][8] CE -pin reg_file_reg[9][9] CE
netloc reg_file[9][15]_i_1_n_0 1 3 1 1460 10870n
load net reg_file[9][23]_i_1_n_0 -pin reg_file[9][23]_i_1 O -pin reg_file_reg[9][16] CE -pin reg_file_reg[9][17] CE -pin reg_file_reg[9][18] CE -pin reg_file_reg[9][19] CE -pin reg_file_reg[9][20] CE -pin reg_file_reg[9][21] CE -pin reg_file_reg[9][22] CE -pin reg_file_reg[9][23] CE
netloc reg_file[9][23]_i_1_n_0 1 3 1 1460 12070n
load net reg_file[9][31]_i_1_n_0 -pin reg_file[9][31]_i_1 O -pin reg_file_reg[9][24] CE -pin reg_file_reg[9][25] CE -pin reg_file_reg[9][26] CE -pin reg_file_reg[9][27] CE -pin reg_file_reg[9][28] CE -pin reg_file_reg[9][29] CE -pin reg_file_reg[9][30] CE -pin reg_file_reg[9][31] CE
netloc reg_file[9][31]_i_1_n_0 1 3 1 1460 13270n
load net reg_file[9][31]_i_2_n_0 -pin reg_file[11][15]_i_1 I3 -pin reg_file[11][23]_i_1 I3 -pin reg_file[11][31]_i_1 I3 -pin reg_file[11][7]_i_1 I3 -pin reg_file[13][15]_i_1 I3 -pin reg_file[13][23]_i_1 I3 -pin reg_file[13][31]_i_1 I3 -pin reg_file[13][7]_i_1 I3 -pin reg_file[15][15]_i_1 I3 -pin reg_file[15][23]_i_1 I3 -pin reg_file[15][31]_i_1 I3 -pin reg_file[15][7]_i_1 I3 -pin reg_file[9][15]_i_1 I3 -pin reg_file[9][23]_i_1 I3 -pin reg_file[9][31]_i_1 I3 -pin reg_file[9][31]_i_2 O -pin reg_file[9][7]_i_1 I3
netloc reg_file[9][31]_i_2_n_0 1 2 1 760 11030n
load net reg_file[9][7]_i_1_n_0 -pin reg_file[9][7]_i_1 O -pin reg_file_reg[9][0] CE -pin reg_file_reg[9][1] CE -pin reg_file_reg[9][2] CE -pin reg_file_reg[9][3] CE -pin reg_file_reg[9][4] CE -pin reg_file_reg[9][5] CE -pin reg_file_reg[9][6] CE -pin reg_file_reg[9][7] CE
netloc reg_file[9][7]_i_1_n_0 1 3 1 1140 9670n
load net reg_file_reg[10][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg[31]_i_4_1[0] -pin reg_file_reg[10][0] Q
load net reg_file_reg[10][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_1[10] -pin reg_file_reg[10][10] Q
load net reg_file_reg[10][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_1[11] -pin reg_file_reg[10][11] Q
load net reg_file_reg[10][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_1[12] -pin reg_file_reg[10][12] Q
load net reg_file_reg[10][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_1[13] -pin reg_file_reg[10][13] Q
load net reg_file_reg[10][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_1[14] -pin reg_file_reg[10][14] Q
load net reg_file_reg[10][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_1[15] -pin reg_file_reg[10][15] Q
load net reg_file_reg[10][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_1[16] -pin reg_file_reg[10][16] Q
load net reg_file_reg[10][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_1[17] -pin reg_file_reg[10][17] Q
load net reg_file_reg[10][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_1[18] -pin reg_file_reg[10][18] Q
load net reg_file_reg[10][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_1[19] -pin reg_file_reg[10][19] Q
load net reg_file_reg[10][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_1[1] -pin reg_file_reg[10][1] Q
load net reg_file_reg[10][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_1[20] -pin reg_file_reg[10][20] Q
load net reg_file_reg[10][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_1[21] -pin reg_file_reg[10][21] Q
load net reg_file_reg[10][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_1[22] -pin reg_file_reg[10][22] Q
load net reg_file_reg[10][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_1[23] -pin reg_file_reg[10][23] Q
load net reg_file_reg[10][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_1[24] -pin reg_file_reg[10][24] Q
load net reg_file_reg[10][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_1[25] -pin reg_file_reg[10][25] Q
load net reg_file_reg[10][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_1[26] -pin reg_file_reg[10][26] Q
load net reg_file_reg[10][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_1[27] -pin reg_file_reg[10][27] Q
load net reg_file_reg[10][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_1[28] -pin reg_file_reg[10][28] Q
load net reg_file_reg[10][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_1[29] -pin reg_file_reg[10][29] Q
load net reg_file_reg[10][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_1[2] -pin reg_file_reg[10][2] Q
load net reg_file_reg[10][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_1[30] -pin reg_file_reg[10][30] Q
load net reg_file_reg[10][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_1[31] -pin reg_file_reg[10][31] Q
load net reg_file_reg[10][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_1[3] -pin reg_file_reg[10][3] Q
load net reg_file_reg[10][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_1[4] -pin reg_file_reg[10][4] Q
load net reg_file_reg[10][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_1[5] -pin reg_file_reg[10][5] Q
load net reg_file_reg[10][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_1[6] -pin reg_file_reg[10][6] Q
load net reg_file_reg[10][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_1[7] -pin reg_file_reg[10][7] Q
load net reg_file_reg[10][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_1[8] -pin reg_file_reg[10][8] Q
load net reg_file_reg[10][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_1[9] -pin reg_file_reg[10][9] Q
load net reg_file_reg[11][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg[31]_i_4_0[0] -pin reg_file_reg[11][0] Q
load net reg_file_reg[11][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_0[10] -pin reg_file_reg[11][10] Q
load net reg_file_reg[11][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_0[11] -pin reg_file_reg[11][11] Q
load net reg_file_reg[11][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_0[12] -pin reg_file_reg[11][12] Q
load net reg_file_reg[11][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_0[13] -pin reg_file_reg[11][13] Q
load net reg_file_reg[11][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_0[14] -pin reg_file_reg[11][14] Q
load net reg_file_reg[11][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_0[15] -pin reg_file_reg[11][15] Q
load net reg_file_reg[11][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_0[16] -pin reg_file_reg[11][16] Q
load net reg_file_reg[11][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_0[17] -pin reg_file_reg[11][17] Q
load net reg_file_reg[11][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_0[18] -pin reg_file_reg[11][18] Q
load net reg_file_reg[11][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_0[19] -pin reg_file_reg[11][19] Q
load net reg_file_reg[11][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_0[1] -pin reg_file_reg[11][1] Q
load net reg_file_reg[11][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_0[20] -pin reg_file_reg[11][20] Q
load net reg_file_reg[11][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_0[21] -pin reg_file_reg[11][21] Q
load net reg_file_reg[11][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_0[22] -pin reg_file_reg[11][22] Q
load net reg_file_reg[11][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_0[23] -pin reg_file_reg[11][23] Q
load net reg_file_reg[11][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_0[24] -pin reg_file_reg[11][24] Q
load net reg_file_reg[11][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_0[25] -pin reg_file_reg[11][25] Q
load net reg_file_reg[11][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_0[26] -pin reg_file_reg[11][26] Q
load net reg_file_reg[11][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_0[27] -pin reg_file_reg[11][27] Q
load net reg_file_reg[11][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_0[28] -pin reg_file_reg[11][28] Q
load net reg_file_reg[11][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_0[29] -pin reg_file_reg[11][29] Q
load net reg_file_reg[11][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_0[2] -pin reg_file_reg[11][2] Q
load net reg_file_reg[11][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_0[30] -pin reg_file_reg[11][30] Q
load net reg_file_reg[11][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_0[31] -pin reg_file_reg[11][31] Q
load net reg_file_reg[11][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_0[3] -pin reg_file_reg[11][3] Q
load net reg_file_reg[11][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_0[4] -pin reg_file_reg[11][4] Q
load net reg_file_reg[11][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_0[5] -pin reg_file_reg[11][5] Q
load net reg_file_reg[11][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_0[6] -pin reg_file_reg[11][6] Q
load net reg_file_reg[11][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_0[7] -pin reg_file_reg[11][7] Q
load net reg_file_reg[11][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_0[8] -pin reg_file_reg[11][8] Q
load net reg_file_reg[11][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_0[9] -pin reg_file_reg[11][9] Q
load net reg_file_reg[12][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg_reg[31]_1[0] -pin reg_file_reg[12][0] Q
load net reg_file_reg[12][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg_reg[31]_1[10] -pin reg_file_reg[12][10] Q
load net reg_file_reg[12][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg_reg[31]_1[11] -pin reg_file_reg[12][11] Q
load net reg_file_reg[12][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg_reg[31]_1[12] -pin reg_file_reg[12][12] Q
load net reg_file_reg[12][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg_reg[31]_1[13] -pin reg_file_reg[12][13] Q
load net reg_file_reg[12][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg_reg[31]_1[14] -pin reg_file_reg[12][14] Q
load net reg_file_reg[12][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg_reg[31]_1[15] -pin reg_file_reg[12][15] Q
load net reg_file_reg[12][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg_reg[31]_1[16] -pin reg_file_reg[12][16] Q
load net reg_file_reg[12][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg_reg[31]_1[17] -pin reg_file_reg[12][17] Q
load net reg_file_reg[12][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg_reg[31]_1[18] -pin reg_file_reg[12][18] Q
load net reg_file_reg[12][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg_reg[31]_1[19] -pin reg_file_reg[12][19] Q
load net reg_file_reg[12][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg_reg[31]_1[1] -pin reg_file_reg[12][1] Q
load net reg_file_reg[12][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg_reg[31]_1[20] -pin reg_file_reg[12][20] Q
load net reg_file_reg[12][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg_reg[31]_1[21] -pin reg_file_reg[12][21] Q
load net reg_file_reg[12][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg_reg[31]_1[22] -pin reg_file_reg[12][22] Q
load net reg_file_reg[12][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg_reg[31]_1[23] -pin reg_file_reg[12][23] Q
load net reg_file_reg[12][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg_reg[31]_1[24] -pin reg_file_reg[12][24] Q
load net reg_file_reg[12][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg_reg[31]_1[25] -pin reg_file_reg[12][25] Q
load net reg_file_reg[12][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg_reg[31]_1[26] -pin reg_file_reg[12][26] Q
load net reg_file_reg[12][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg_reg[31]_1[27] -pin reg_file_reg[12][27] Q
load net reg_file_reg[12][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg_reg[31]_1[28] -pin reg_file_reg[12][28] Q
load net reg_file_reg[12][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg_reg[31]_1[29] -pin reg_file_reg[12][29] Q
load net reg_file_reg[12][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg_reg[31]_1[2] -pin reg_file_reg[12][2] Q
load net reg_file_reg[12][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg_reg[31]_1[30] -pin reg_file_reg[12][30] Q
load net reg_file_reg[12][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg_reg[31]_1[31] -pin reg_file_reg[12][31] Q
load net reg_file_reg[12][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg_reg[31]_1[3] -pin reg_file_reg[12][3] Q
load net reg_file_reg[12][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg_reg[31]_1[4] -pin reg_file_reg[12][4] Q
load net reg_file_reg[12][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg_reg[31]_1[5] -pin reg_file_reg[12][5] Q
load net reg_file_reg[12][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg_reg[31]_1[6] -pin reg_file_reg[12][6] Q
load net reg_file_reg[12][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg_reg[31]_1[7] -pin reg_file_reg[12][7] Q
load net reg_file_reg[12][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg_reg[31]_1[8] -pin reg_file_reg[12][8] Q
load net reg_file_reg[12][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg_reg[31]_1[9] -pin reg_file_reg[12][9] Q
load net reg_file_reg[13][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg_reg[31]_0[0] -pin reg_file_reg[13][0] Q
load net reg_file_reg[13][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg_reg[31]_0[10] -pin reg_file_reg[13][10] Q
load net reg_file_reg[13][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg_reg[31]_0[11] -pin reg_file_reg[13][11] Q
load net reg_file_reg[13][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg_reg[31]_0[12] -pin reg_file_reg[13][12] Q
load net reg_file_reg[13][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg_reg[31]_0[13] -pin reg_file_reg[13][13] Q
load net reg_file_reg[13][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg_reg[31]_0[14] -pin reg_file_reg[13][14] Q
load net reg_file_reg[13][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg_reg[31]_0[15] -pin reg_file_reg[13][15] Q
load net reg_file_reg[13][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg_reg[31]_0[16] -pin reg_file_reg[13][16] Q
load net reg_file_reg[13][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg_reg[31]_0[17] -pin reg_file_reg[13][17] Q
load net reg_file_reg[13][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg_reg[31]_0[18] -pin reg_file_reg[13][18] Q
load net reg_file_reg[13][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg_reg[31]_0[19] -pin reg_file_reg[13][19] Q
load net reg_file_reg[13][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg_reg[31]_0[1] -pin reg_file_reg[13][1] Q
load net reg_file_reg[13][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg_reg[31]_0[20] -pin reg_file_reg[13][20] Q
load net reg_file_reg[13][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg_reg[31]_0[21] -pin reg_file_reg[13][21] Q
load net reg_file_reg[13][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg_reg[31]_0[22] -pin reg_file_reg[13][22] Q
load net reg_file_reg[13][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg_reg[31]_0[23] -pin reg_file_reg[13][23] Q
load net reg_file_reg[13][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg_reg[31]_0[24] -pin reg_file_reg[13][24] Q
load net reg_file_reg[13][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg_reg[31]_0[25] -pin reg_file_reg[13][25] Q
load net reg_file_reg[13][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg_reg[31]_0[26] -pin reg_file_reg[13][26] Q
load net reg_file_reg[13][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg_reg[31]_0[27] -pin reg_file_reg[13][27] Q
load net reg_file_reg[13][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg_reg[31]_0[28] -pin reg_file_reg[13][28] Q
load net reg_file_reg[13][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg_reg[31]_0[29] -pin reg_file_reg[13][29] Q
load net reg_file_reg[13][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg_reg[31]_0[2] -pin reg_file_reg[13][2] Q
load net reg_file_reg[13][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg_reg[31]_0[30] -pin reg_file_reg[13][30] Q
load net reg_file_reg[13][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg_reg[31]_0[31] -pin reg_file_reg[13][31] Q
load net reg_file_reg[13][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg_reg[31]_0[3] -pin reg_file_reg[13][3] Q
load net reg_file_reg[13][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg_reg[31]_0[4] -pin reg_file_reg[13][4] Q
load net reg_file_reg[13][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg_reg[31]_0[5] -pin reg_file_reg[13][5] Q
load net reg_file_reg[13][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg_reg[31]_0[6] -pin reg_file_reg[13][6] Q
load net reg_file_reg[13][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg_reg[31]_0[7] -pin reg_file_reg[13][7] Q
load net reg_file_reg[13][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg_reg[31]_0[8] -pin reg_file_reg[13][8] Q
load net reg_file_reg[13][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg_reg[31]_0[9] -pin reg_file_reg[13][9] Q
load net reg_file_reg[14][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg_reg[31][0] -pin reg_file_reg[14][0] Q
load net reg_file_reg[14][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg_reg[31][10] -pin reg_file_reg[14][10] Q
load net reg_file_reg[14][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg_reg[31][11] -pin reg_file_reg[14][11] Q
load net reg_file_reg[14][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg_reg[31][12] -pin reg_file_reg[14][12] Q
load net reg_file_reg[14][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg_reg[31][13] -pin reg_file_reg[14][13] Q
load net reg_file_reg[14][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg_reg[31][14] -pin reg_file_reg[14][14] Q
load net reg_file_reg[14][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg_reg[31][15] -pin reg_file_reg[14][15] Q
load net reg_file_reg[14][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg_reg[31][16] -pin reg_file_reg[14][16] Q
load net reg_file_reg[14][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg_reg[31][17] -pin reg_file_reg[14][17] Q
load net reg_file_reg[14][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg_reg[31][18] -pin reg_file_reg[14][18] Q
load net reg_file_reg[14][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg_reg[31][19] -pin reg_file_reg[14][19] Q
load net reg_file_reg[14][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg_reg[31][1] -pin reg_file_reg[14][1] Q
load net reg_file_reg[14][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg_reg[31][20] -pin reg_file_reg[14][20] Q
load net reg_file_reg[14][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg_reg[31][21] -pin reg_file_reg[14][21] Q
load net reg_file_reg[14][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg_reg[31][22] -pin reg_file_reg[14][22] Q
load net reg_file_reg[14][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg_reg[31][23] -pin reg_file_reg[14][23] Q
load net reg_file_reg[14][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg_reg[31][24] -pin reg_file_reg[14][24] Q
load net reg_file_reg[14][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg_reg[31][25] -pin reg_file_reg[14][25] Q
load net reg_file_reg[14][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg_reg[31][26] -pin reg_file_reg[14][26] Q
load net reg_file_reg[14][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg_reg[31][27] -pin reg_file_reg[14][27] Q
load net reg_file_reg[14][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg_reg[31][28] -pin reg_file_reg[14][28] Q
load net reg_file_reg[14][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg_reg[31][29] -pin reg_file_reg[14][29] Q
load net reg_file_reg[14][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg_reg[31][2] -pin reg_file_reg[14][2] Q
load net reg_file_reg[14][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg_reg[31][30] -pin reg_file_reg[14][30] Q
load net reg_file_reg[14][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg_reg[31][31] -pin reg_file_reg[14][31] Q
load net reg_file_reg[14][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg_reg[31][3] -pin reg_file_reg[14][3] Q
load net reg_file_reg[14][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg_reg[31][4] -pin reg_file_reg[14][4] Q
load net reg_file_reg[14][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg_reg[31][5] -pin reg_file_reg[14][5] Q
load net reg_file_reg[14][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg_reg[31][6] -pin reg_file_reg[14][6] Q
load net reg_file_reg[14][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg_reg[31][7] -pin reg_file_reg[14][7] Q
load net reg_file_reg[14][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg_reg[31][8] -pin reg_file_reg[14][8] Q
load net reg_file_reg[14][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg_reg[31][9] -pin reg_file_reg[14][9] Q
load net reg_file_reg[15][0] -attr @rip(#000000) 0 -pin perf Q[0] -pin reg_file_reg[15][0] Q
load net reg_file_reg[15][10] -attr @rip(#000000) 10 -pin perf Q[10] -pin reg_file_reg[15][10] Q
load net reg_file_reg[15][11] -attr @rip(#000000) 11 -pin perf Q[11] -pin reg_file_reg[15][11] Q
load net reg_file_reg[15][12] -attr @rip(#000000) 12 -pin perf Q[12] -pin reg_file_reg[15][12] Q
load net reg_file_reg[15][13] -attr @rip(#000000) 13 -pin perf Q[13] -pin reg_file_reg[15][13] Q
load net reg_file_reg[15][14] -attr @rip(#000000) 14 -pin perf Q[14] -pin reg_file_reg[15][14] Q
load net reg_file_reg[15][15] -attr @rip(#000000) 15 -pin perf Q[15] -pin reg_file_reg[15][15] Q
load net reg_file_reg[15][16] -attr @rip(#000000) 16 -pin perf Q[16] -pin reg_file_reg[15][16] Q
load net reg_file_reg[15][17] -attr @rip(#000000) 17 -pin perf Q[17] -pin reg_file_reg[15][17] Q
load net reg_file_reg[15][18] -attr @rip(#000000) 18 -pin perf Q[18] -pin reg_file_reg[15][18] Q
load net reg_file_reg[15][19] -attr @rip(#000000) 19 -pin perf Q[19] -pin reg_file_reg[15][19] Q
load net reg_file_reg[15][1] -attr @rip(#000000) 1 -pin perf Q[1] -pin reg_file_reg[15][1] Q
load net reg_file_reg[15][20] -attr @rip(#000000) 20 -pin perf Q[20] -pin reg_file_reg[15][20] Q
load net reg_file_reg[15][21] -attr @rip(#000000) 21 -pin perf Q[21] -pin reg_file_reg[15][21] Q
load net reg_file_reg[15][22] -attr @rip(#000000) 22 -pin perf Q[22] -pin reg_file_reg[15][22] Q
load net reg_file_reg[15][23] -attr @rip(#000000) 23 -pin perf Q[23] -pin reg_file_reg[15][23] Q
load net reg_file_reg[15][24] -attr @rip(#000000) 24 -pin perf Q[24] -pin reg_file_reg[15][24] Q
load net reg_file_reg[15][25] -attr @rip(#000000) 25 -pin perf Q[25] -pin reg_file_reg[15][25] Q
load net reg_file_reg[15][26] -attr @rip(#000000) 26 -pin perf Q[26] -pin reg_file_reg[15][26] Q
load net reg_file_reg[15][27] -attr @rip(#000000) 27 -pin perf Q[27] -pin reg_file_reg[15][27] Q
load net reg_file_reg[15][28] -attr @rip(#000000) 28 -pin perf Q[28] -pin reg_file_reg[15][28] Q
load net reg_file_reg[15][29] -attr @rip(#000000) 29 -pin perf Q[29] -pin reg_file_reg[15][29] Q
load net reg_file_reg[15][2] -attr @rip(#000000) 2 -pin perf Q[2] -pin reg_file_reg[15][2] Q
load net reg_file_reg[15][30] -attr @rip(#000000) 30 -pin perf Q[30] -pin reg_file_reg[15][30] Q
load net reg_file_reg[15][31] -attr @rip(#000000) 31 -pin perf Q[31] -pin reg_file_reg[15][31] Q
load net reg_file_reg[15][3] -attr @rip(#000000) 3 -pin perf Q[3] -pin reg_file_reg[15][3] Q
load net reg_file_reg[15][4] -attr @rip(#000000) 4 -pin perf Q[4] -pin reg_file_reg[15][4] Q
load net reg_file_reg[15][5] -attr @rip(#000000) 5 -pin perf Q[5] -pin reg_file_reg[15][5] Q
load net reg_file_reg[15][6] -attr @rip(#000000) 6 -pin perf Q[6] -pin reg_file_reg[15][6] Q
load net reg_file_reg[15][7] -attr @rip(#000000) 7 -pin perf Q[7] -pin reg_file_reg[15][7] Q
load net reg_file_reg[15][8] -attr @rip(#000000) 8 -pin perf Q[8] -pin reg_file_reg[15][8] Q
load net reg_file_reg[15][9] -attr @rip(#000000) 9 -pin perf Q[9] -pin reg_file_reg[15][9] Q
load net reg_file_reg[9][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg[31]_i_4_2[0] -pin reg_file_reg[9][0] Q
load net reg_file_reg[9][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_2[10] -pin reg_file_reg[9][10] Q
load net reg_file_reg[9][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_2[11] -pin reg_file_reg[9][11] Q
load net reg_file_reg[9][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_2[12] -pin reg_file_reg[9][12] Q
load net reg_file_reg[9][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_2[13] -pin reg_file_reg[9][13] Q
load net reg_file_reg[9][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_2[14] -pin reg_file_reg[9][14] Q
load net reg_file_reg[9][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_2[15] -pin reg_file_reg[9][15] Q
load net reg_file_reg[9][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_2[16] -pin reg_file_reg[9][16] Q
load net reg_file_reg[9][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_2[17] -pin reg_file_reg[9][17] Q
load net reg_file_reg[9][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_2[18] -pin reg_file_reg[9][18] Q
load net reg_file_reg[9][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_2[19] -pin reg_file_reg[9][19] Q
load net reg_file_reg[9][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_2[1] -pin reg_file_reg[9][1] Q
load net reg_file_reg[9][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_2[20] -pin reg_file_reg[9][20] Q
load net reg_file_reg[9][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_2[21] -pin reg_file_reg[9][21] Q
load net reg_file_reg[9][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_2[22] -pin reg_file_reg[9][22] Q
load net reg_file_reg[9][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_2[23] -pin reg_file_reg[9][23] Q
load net reg_file_reg[9][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_2[24] -pin reg_file_reg[9][24] Q
load net reg_file_reg[9][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_2[25] -pin reg_file_reg[9][25] Q
load net reg_file_reg[9][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_2[26] -pin reg_file_reg[9][26] Q
load net reg_file_reg[9][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_2[27] -pin reg_file_reg[9][27] Q
load net reg_file_reg[9][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_2[28] -pin reg_file_reg[9][28] Q
load net reg_file_reg[9][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_2[29] -pin reg_file_reg[9][29] Q
load net reg_file_reg[9][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_2[2] -pin reg_file_reg[9][2] Q
load net reg_file_reg[9][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_2[30] -pin reg_file_reg[9][30] Q
load net reg_file_reg[9][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_2[31] -pin reg_file_reg[9][31] Q
load net reg_file_reg[9][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_2[3] -pin reg_file_reg[9][3] Q
load net reg_file_reg[9][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_2[4] -pin reg_file_reg[9][4] Q
load net reg_file_reg[9][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_2[5] -pin reg_file_reg[9][5] Q
load net reg_file_reg[9][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_2[6] -pin reg_file_reg[9][6] Q
load net reg_file_reg[9][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_2[7] -pin reg_file_reg[9][7] Q
load net reg_file_reg[9][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_2[8] -pin reg_file_reg[9][8] Q
load net reg_file_reg[9][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_2[9] -pin reg_file_reg[9][9] Q
load net reg_file_reg_n_0_[0][0] -attr @rip(#000000) 0 -pin dataflow Q[0] -pin perf s_axi_rdata_reg[31]_i_4_11[0] -pin pipe_ctrl Q[0] -pin preproc Q[0] -pin reg_file_reg[0][0] Q
load net reg_file_reg_n_0_[0][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_11[10] -pin reg_file_reg[0][10] Q
load net reg_file_reg_n_0_[0][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_11[11] -pin reg_file_reg[0][11] Q
load net reg_file_reg_n_0_[0][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_11[12] -pin reg_file_reg[0][12] Q
load net reg_file_reg_n_0_[0][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_11[13] -pin reg_file_reg[0][13] Q
load net reg_file_reg_n_0_[0][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_11[14] -pin reg_file_reg[0][14] Q
load net reg_file_reg_n_0_[0][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_11[15] -pin reg_file_reg[0][15] Q
load net reg_file_reg_n_0_[0][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_11[16] -pin reg_file_reg[0][16] Q
load net reg_file_reg_n_0_[0][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_11[17] -pin reg_file_reg[0][17] Q
load net reg_file_reg_n_0_[0][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_11[18] -pin reg_file_reg[0][18] Q
load net reg_file_reg_n_0_[0][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_11[19] -pin reg_file_reg[0][19] Q
load net reg_file_reg_n_0_[0][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_11[1] -pin reg_file_reg[0][1] Q
load net reg_file_reg_n_0_[0][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_11[20] -pin reg_file_reg[0][20] Q
load net reg_file_reg_n_0_[0][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_11[21] -pin reg_file_reg[0][21] Q
load net reg_file_reg_n_0_[0][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_11[22] -pin reg_file_reg[0][22] Q
load net reg_file_reg_n_0_[0][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_11[23] -pin reg_file_reg[0][23] Q
load net reg_file_reg_n_0_[0][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_11[24] -pin reg_file_reg[0][24] Q
load net reg_file_reg_n_0_[0][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_11[25] -pin reg_file_reg[0][25] Q
load net reg_file_reg_n_0_[0][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_11[26] -pin reg_file_reg[0][26] Q
load net reg_file_reg_n_0_[0][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_11[27] -pin reg_file_reg[0][27] Q
load net reg_file_reg_n_0_[0][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_11[28] -pin reg_file_reg[0][28] Q
load net reg_file_reg_n_0_[0][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_11[29] -pin reg_file_reg[0][29] Q
load net reg_file_reg_n_0_[0][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_11[2] -pin reg_file_reg[0][2] Q
load net reg_file_reg_n_0_[0][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_11[30] -pin reg_file_reg[0][30] Q
load net reg_file_reg_n_0_[0][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_11[31] -pin reg_file_reg[0][31] Q
load net reg_file_reg_n_0_[0][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_11[3] -pin reg_file_reg[0][3] Q
load net reg_file_reg_n_0_[0][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_11[4] -pin reg_file_reg[0][4] Q
load net reg_file_reg_n_0_[0][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_11[5] -pin reg_file_reg[0][5] Q
load net reg_file_reg_n_0_[0][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_11[6] -pin reg_file_reg[0][6] Q
load net reg_file_reg_n_0_[0][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_11[7] -pin reg_file_reg[0][7] Q
load net reg_file_reg_n_0_[0][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_11[8] -pin reg_file_reg[0][8] Q
load net reg_file_reg_n_0_[0][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_11[9] -pin reg_file_reg[0][9] Q
load net reg_file_reg_n_0_[1][0] -attr @rip(#000000) 0 -pin conv kernel_reg[1][13][0]_1[0] -pin perf s_axi_rdata_reg[31]_i_4_10[0] -pin reg_file_reg[1][0] Q
load net reg_file_reg_n_0_[1][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_10[10] -pin reg_file_reg[1][10] Q
load net reg_file_reg_n_0_[1][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_10[11] -pin reg_file_reg[1][11] Q
load net reg_file_reg_n_0_[1][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_10[12] -pin reg_file_reg[1][12] Q
load net reg_file_reg_n_0_[1][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_10[13] -pin reg_file_reg[1][13] Q
load net reg_file_reg_n_0_[1][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_10[14] -pin reg_file_reg[1][14] Q
load net reg_file_reg_n_0_[1][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_10[15] -pin reg_file_reg[1][15] Q
load net reg_file_reg_n_0_[1][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_10[16] -pin reg_file_reg[1][16] Q
load net reg_file_reg_n_0_[1][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_10[17] -pin reg_file_reg[1][17] Q
load net reg_file_reg_n_0_[1][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_10[18] -pin reg_file_reg[1][18] Q
load net reg_file_reg_n_0_[1][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_10[19] -pin reg_file_reg[1][19] Q
load net reg_file_reg_n_0_[1][1] -attr @rip(#000000) 1 -pin conv kernel_reg[1][13][0]_1[1] -pin perf s_axi_rdata_reg[31]_i_4_10[1] -pin reg_file_reg[1][1] Q
load net reg_file_reg_n_0_[1][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_10[20] -pin reg_file_reg[1][20] Q
load net reg_file_reg_n_0_[1][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_10[21] -pin reg_file_reg[1][21] Q
load net reg_file_reg_n_0_[1][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_10[22] -pin reg_file_reg[1][22] Q
load net reg_file_reg_n_0_[1][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_10[23] -pin reg_file_reg[1][23] Q
load net reg_file_reg_n_0_[1][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_10[24] -pin reg_file_reg[1][24] Q
load net reg_file_reg_n_0_[1][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_10[25] -pin reg_file_reg[1][25] Q
load net reg_file_reg_n_0_[1][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_10[26] -pin reg_file_reg[1][26] Q
load net reg_file_reg_n_0_[1][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_10[27] -pin reg_file_reg[1][27] Q
load net reg_file_reg_n_0_[1][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_10[28] -pin reg_file_reg[1][28] Q
load net reg_file_reg_n_0_[1][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_10[29] -pin reg_file_reg[1][29] Q
load net reg_file_reg_n_0_[1][2] -attr @rip(#000000) 2 -pin conv kernel_reg[1][13][0]_1[2] -pin perf s_axi_rdata_reg[31]_i_4_10[2] -pin reg_file_reg[1][2] Q
load net reg_file_reg_n_0_[1][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_10[30] -pin reg_file_reg[1][30] Q
load net reg_file_reg_n_0_[1][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_10[31] -pin reg_file_reg[1][31] Q
load net reg_file_reg_n_0_[1][3] -attr @rip(#000000) 3 -pin conv kernel_reg[1][13][0]_1[3] -pin perf s_axi_rdata_reg[31]_i_4_10[3] -pin reg_file_reg[1][3] Q
load net reg_file_reg_n_0_[1][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_10[4] -pin reg_file_reg[1][4] Q
load net reg_file_reg_n_0_[1][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_10[5] -pin reg_file_reg[1][5] Q
load net reg_file_reg_n_0_[1][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_10[6] -pin reg_file_reg[1][6] Q
load net reg_file_reg_n_0_[1][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_10[7] -pin reg_file_reg[1][7] Q
load net reg_file_reg_n_0_[1][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_10[8] -pin reg_file_reg[1][8] Q
load net reg_file_reg_n_0_[1][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_10[9] -pin reg_file_reg[1][9] Q
load net reg_file_reg_n_0_[2][0] -attr @rip(#000000) 0 -pin conv Q[0] -pin perf s_axi_rdata_reg[31]_i_4_9[0] -pin reg_file_reg[2][0] Q
load net reg_file_reg_n_0_[2][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_9[10] -pin reg_file_reg[2][10] Q
load net reg_file_reg_n_0_[2][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_9[11] -pin reg_file_reg[2][11] Q
load net reg_file_reg_n_0_[2][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_9[12] -pin reg_file_reg[2][12] Q
load net reg_file_reg_n_0_[2][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_9[13] -pin reg_file_reg[2][13] Q
load net reg_file_reg_n_0_[2][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_9[14] -pin reg_file_reg[2][14] Q
load net reg_file_reg_n_0_[2][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_9[15] -pin reg_file_reg[2][15] Q
load net reg_file_reg_n_0_[2][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_9[16] -pin reg_file_reg[2][16] Q
load net reg_file_reg_n_0_[2][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_9[17] -pin reg_file_reg[2][17] Q
load net reg_file_reg_n_0_[2][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_9[18] -pin reg_file_reg[2][18] Q
load net reg_file_reg_n_0_[2][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_9[19] -pin reg_file_reg[2][19] Q
load net reg_file_reg_n_0_[2][1] -attr @rip(#000000) 1 -pin conv Q[1] -pin perf s_axi_rdata_reg[31]_i_4_9[1] -pin reg_file_reg[2][1] Q
load net reg_file_reg_n_0_[2][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_9[20] -pin reg_file_reg[2][20] Q
load net reg_file_reg_n_0_[2][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_9[21] -pin reg_file_reg[2][21] Q
load net reg_file_reg_n_0_[2][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_9[22] -pin reg_file_reg[2][22] Q
load net reg_file_reg_n_0_[2][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_9[23] -pin reg_file_reg[2][23] Q
load net reg_file_reg_n_0_[2][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_9[24] -pin reg_file_reg[2][24] Q
load net reg_file_reg_n_0_[2][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_9[25] -pin reg_file_reg[2][25] Q
load net reg_file_reg_n_0_[2][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_9[26] -pin reg_file_reg[2][26] Q
load net reg_file_reg_n_0_[2][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_9[27] -pin reg_file_reg[2][27] Q
load net reg_file_reg_n_0_[2][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_9[28] -pin reg_file_reg[2][28] Q
load net reg_file_reg_n_0_[2][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_9[29] -pin reg_file_reg[2][29] Q
load net reg_file_reg_n_0_[2][2] -attr @rip(#000000) 2 -pin conv Q[2] -pin perf s_axi_rdata_reg[31]_i_4_9[2] -pin reg_file_reg[2][2] Q
load net reg_file_reg_n_0_[2][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_9[30] -pin reg_file_reg[2][30] Q
load net reg_file_reg_n_0_[2][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_9[31] -pin reg_file_reg[2][31] Q
load net reg_file_reg_n_0_[2][3] -attr @rip(#000000) 3 -pin conv Q[3] -pin perf s_axi_rdata_reg[31]_i_4_9[3] -pin reg_file_reg[2][3] Q
load net reg_file_reg_n_0_[2][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_9[4] -pin reg_file_reg[2][4] Q
load net reg_file_reg_n_0_[2][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_9[5] -pin reg_file_reg[2][5] Q
load net reg_file_reg_n_0_[2][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_9[6] -pin reg_file_reg[2][6] Q
load net reg_file_reg_n_0_[2][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_9[7] -pin reg_file_reg[2][7] Q
load net reg_file_reg_n_0_[2][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_9[8] -pin reg_file_reg[2][8] Q
load net reg_file_reg_n_0_[2][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_9[9] -pin reg_file_reg[2][9] Q
load net reg_file_reg_n_0_[3][0] -attr @rip(#000000) 0 -pin conv padded_image[1][8][56][7]_i_4_0[0] -pin perf s_axi_rdata_reg[31]_i_4_8[0] -pin reg_file_reg[3][0] Q
load net reg_file_reg_n_0_[3][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_8[10] -pin reg_file_reg[3][10] Q
load net reg_file_reg_n_0_[3][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_8[11] -pin reg_file_reg[3][11] Q
load net reg_file_reg_n_0_[3][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_8[12] -pin reg_file_reg[3][12] Q
load net reg_file_reg_n_0_[3][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_8[13] -pin reg_file_reg[3][13] Q
load net reg_file_reg_n_0_[3][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_8[14] -pin reg_file_reg[3][14] Q
load net reg_file_reg_n_0_[3][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_8[15] -pin reg_file_reg[3][15] Q
load net reg_file_reg_n_0_[3][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_8[16] -pin reg_file_reg[3][16] Q
load net reg_file_reg_n_0_[3][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_8[17] -pin reg_file_reg[3][17] Q
load net reg_file_reg_n_0_[3][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_8[18] -pin reg_file_reg[3][18] Q
load net reg_file_reg_n_0_[3][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_8[19] -pin reg_file_reg[3][19] Q
load net reg_file_reg_n_0_[3][1] -attr @rip(#000000) 1 -pin conv padded_image[1][8][56][7]_i_4_0[1] -pin perf s_axi_rdata_reg[31]_i_4_8[1] -pin reg_file_reg[3][1] Q
load net reg_file_reg_n_0_[3][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_8[20] -pin reg_file_reg[3][20] Q
load net reg_file_reg_n_0_[3][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_8[21] -pin reg_file_reg[3][21] Q
load net reg_file_reg_n_0_[3][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_8[22] -pin reg_file_reg[3][22] Q
load net reg_file_reg_n_0_[3][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_8[23] -pin reg_file_reg[3][23] Q
load net reg_file_reg_n_0_[3][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_8[24] -pin reg_file_reg[3][24] Q
load net reg_file_reg_n_0_[3][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_8[25] -pin reg_file_reg[3][25] Q
load net reg_file_reg_n_0_[3][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_8[26] -pin reg_file_reg[3][26] Q
load net reg_file_reg_n_0_[3][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_8[27] -pin reg_file_reg[3][27] Q
load net reg_file_reg_n_0_[3][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_8[28] -pin reg_file_reg[3][28] Q
load net reg_file_reg_n_0_[3][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_8[29] -pin reg_file_reg[3][29] Q
load net reg_file_reg_n_0_[3][2] -attr @rip(#000000) 2 -pin conv padded_image[1][8][56][7]_i_4_0[2] -pin perf s_axi_rdata_reg[31]_i_4_8[2] -pin reg_file_reg[3][2] Q
load net reg_file_reg_n_0_[3][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_8[30] -pin reg_file_reg[3][30] Q
load net reg_file_reg_n_0_[3][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_8[31] -pin reg_file_reg[3][31] Q
load net reg_file_reg_n_0_[3][3] -attr @rip(#000000) 3 -pin conv padded_image[1][8][56][7]_i_4_0[3] -pin perf s_axi_rdata_reg[31]_i_4_8[3] -pin reg_file_reg[3][3] Q
load net reg_file_reg_n_0_[3][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_8[4] -pin reg_file_reg[3][4] Q
load net reg_file_reg_n_0_[3][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_8[5] -pin reg_file_reg[3][5] Q
load net reg_file_reg_n_0_[3][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_8[6] -pin reg_file_reg[3][6] Q
load net reg_file_reg_n_0_[3][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_8[7] -pin reg_file_reg[3][7] Q
load net reg_file_reg_n_0_[3][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_8[8] -pin reg_file_reg[3][8] Q
load net reg_file_reg_n_0_[3][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_8[9] -pin reg_file_reg[3][9] Q
load net reg_file_reg_n_0_[4][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg[31]_i_4_7[0] -pin reg_file_reg[4][0] Q
load net reg_file_reg_n_0_[4][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_7[10] -pin reg_file_reg[4][10] Q
load net reg_file_reg_n_0_[4][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_7[11] -pin reg_file_reg[4][11] Q
load net reg_file_reg_n_0_[4][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_7[12] -pin reg_file_reg[4][12] Q
load net reg_file_reg_n_0_[4][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_7[13] -pin reg_file_reg[4][13] Q
load net reg_file_reg_n_0_[4][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_7[14] -pin reg_file_reg[4][14] Q
load net reg_file_reg_n_0_[4][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_7[15] -pin reg_file_reg[4][15] Q
load net reg_file_reg_n_0_[4][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_7[16] -pin reg_file_reg[4][16] Q
load net reg_file_reg_n_0_[4][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_7[17] -pin reg_file_reg[4][17] Q
load net reg_file_reg_n_0_[4][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_7[18] -pin reg_file_reg[4][18] Q
load net reg_file_reg_n_0_[4][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_7[19] -pin reg_file_reg[4][19] Q
load net reg_file_reg_n_0_[4][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_7[1] -pin reg_file_reg[4][1] Q
load net reg_file_reg_n_0_[4][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_7[20] -pin reg_file_reg[4][20] Q
load net reg_file_reg_n_0_[4][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_7[21] -pin reg_file_reg[4][21] Q
load net reg_file_reg_n_0_[4][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_7[22] -pin reg_file_reg[4][22] Q
load net reg_file_reg_n_0_[4][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_7[23] -pin reg_file_reg[4][23] Q
load net reg_file_reg_n_0_[4][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_7[24] -pin reg_file_reg[4][24] Q
load net reg_file_reg_n_0_[4][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_7[25] -pin reg_file_reg[4][25] Q
load net reg_file_reg_n_0_[4][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_7[26] -pin reg_file_reg[4][26] Q
load net reg_file_reg_n_0_[4][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_7[27] -pin reg_file_reg[4][27] Q
load net reg_file_reg_n_0_[4][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_7[28] -pin reg_file_reg[4][28] Q
load net reg_file_reg_n_0_[4][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_7[29] -pin reg_file_reg[4][29] Q
load net reg_file_reg_n_0_[4][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_7[2] -pin reg_file_reg[4][2] Q
load net reg_file_reg_n_0_[4][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_7[30] -pin reg_file_reg[4][30] Q
load net reg_file_reg_n_0_[4][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_7[31] -pin reg_file_reg[4][31] Q
load net reg_file_reg_n_0_[4][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_7[3] -pin reg_file_reg[4][3] Q
load net reg_file_reg_n_0_[4][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_7[4] -pin reg_file_reg[4][4] Q
load net reg_file_reg_n_0_[4][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_7[5] -pin reg_file_reg[4][5] Q
load net reg_file_reg_n_0_[4][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_7[6] -pin reg_file_reg[4][6] Q
load net reg_file_reg_n_0_[4][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_7[7] -pin reg_file_reg[4][7] Q
load net reg_file_reg_n_0_[4][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_7[8] -pin reg_file_reg[4][8] Q
load net reg_file_reg_n_0_[4][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_7[9] -pin reg_file_reg[4][9] Q
load net reg_file_reg_n_0_[5][0] -attr @rip(#000000) 0 -pin perf s_axi_rdata_reg[31]_i_4_6[0] -pin reg_file_reg[5][0] Q
load net reg_file_reg_n_0_[5][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_6[10] -pin reg_file_reg[5][10] Q
load net reg_file_reg_n_0_[5][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_6[11] -pin reg_file_reg[5][11] Q
load net reg_file_reg_n_0_[5][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_6[12] -pin reg_file_reg[5][12] Q
load net reg_file_reg_n_0_[5][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_6[13] -pin reg_file_reg[5][13] Q
load net reg_file_reg_n_0_[5][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_6[14] -pin reg_file_reg[5][14] Q
load net reg_file_reg_n_0_[5][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_6[15] -pin reg_file_reg[5][15] Q
load net reg_file_reg_n_0_[5][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_6[16] -pin reg_file_reg[5][16] Q
load net reg_file_reg_n_0_[5][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_6[17] -pin reg_file_reg[5][17] Q
load net reg_file_reg_n_0_[5][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_6[18] -pin reg_file_reg[5][18] Q
load net reg_file_reg_n_0_[5][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_6[19] -pin reg_file_reg[5][19] Q
load net reg_file_reg_n_0_[5][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_6[1] -pin reg_file_reg[5][1] Q
load net reg_file_reg_n_0_[5][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_6[20] -pin reg_file_reg[5][20] Q
load net reg_file_reg_n_0_[5][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_6[21] -pin reg_file_reg[5][21] Q
load net reg_file_reg_n_0_[5][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_6[22] -pin reg_file_reg[5][22] Q
load net reg_file_reg_n_0_[5][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_6[23] -pin reg_file_reg[5][23] Q
load net reg_file_reg_n_0_[5][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_6[24] -pin reg_file_reg[5][24] Q
load net reg_file_reg_n_0_[5][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_6[25] -pin reg_file_reg[5][25] Q
load net reg_file_reg_n_0_[5][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_6[26] -pin reg_file_reg[5][26] Q
load net reg_file_reg_n_0_[5][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_6[27] -pin reg_file_reg[5][27] Q
load net reg_file_reg_n_0_[5][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_6[28] -pin reg_file_reg[5][28] Q
load net reg_file_reg_n_0_[5][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_6[29] -pin reg_file_reg[5][29] Q
load net reg_file_reg_n_0_[5][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_6[2] -pin reg_file_reg[5][2] Q
load net reg_file_reg_n_0_[5][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_6[30] -pin reg_file_reg[5][30] Q
load net reg_file_reg_n_0_[5][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_6[31] -pin reg_file_reg[5][31] Q
load net reg_file_reg_n_0_[5][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_6[3] -pin reg_file_reg[5][3] Q
load net reg_file_reg_n_0_[5][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_6[4] -pin reg_file_reg[5][4] Q
load net reg_file_reg_n_0_[5][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_6[5] -pin reg_file_reg[5][5] Q
load net reg_file_reg_n_0_[5][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_6[6] -pin reg_file_reg[5][6] Q
load net reg_file_reg_n_0_[5][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_6[7] -pin reg_file_reg[5][7] Q
load net reg_file_reg_n_0_[5][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_6[8] -pin reg_file_reg[5][8] Q
load net reg_file_reg_n_0_[5][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_6[9] -pin reg_file_reg[5][9] Q
load net reg_file_reg_n_0_[6][0] -attr @rip(#000000) 0 -pin loader cfg_addr_reg_reg[0]_0[0] -pin perf s_axi_rdata_reg[31]_i_4_5[0] -pin reg_file_reg[6][0] Q
load net reg_file_reg_n_0_[6][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_5[10] -pin reg_file_reg[6][10] Q
load net reg_file_reg_n_0_[6][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_5[11] -pin reg_file_reg[6][11] Q
load net reg_file_reg_n_0_[6][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_5[12] -pin reg_file_reg[6][12] Q
load net reg_file_reg_n_0_[6][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_5[13] -pin reg_file_reg[6][13] Q
load net reg_file_reg_n_0_[6][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_5[14] -pin reg_file_reg[6][14] Q
load net reg_file_reg_n_0_[6][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_5[15] -pin reg_file_reg[6][15] Q
load net reg_file_reg_n_0_[6][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_5[16] -pin reg_file_reg[6][16] Q
load net reg_file_reg_n_0_[6][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_5[17] -pin reg_file_reg[6][17] Q
load net reg_file_reg_n_0_[6][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_5[18] -pin reg_file_reg[6][18] Q
load net reg_file_reg_n_0_[6][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_5[19] -pin reg_file_reg[6][19] Q
load net reg_file_reg_n_0_[6][1] -attr @rip(#000000) 1 -pin perf s_axi_rdata_reg[31]_i_4_5[1] -pin reg_file_reg[6][1] Q
load net reg_file_reg_n_0_[6][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_5[20] -pin reg_file_reg[6][20] Q
load net reg_file_reg_n_0_[6][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_5[21] -pin reg_file_reg[6][21] Q
load net reg_file_reg_n_0_[6][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_5[22] -pin reg_file_reg[6][22] Q
load net reg_file_reg_n_0_[6][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_5[23] -pin reg_file_reg[6][23] Q
load net reg_file_reg_n_0_[6][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_5[24] -pin reg_file_reg[6][24] Q
load net reg_file_reg_n_0_[6][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_5[25] -pin reg_file_reg[6][25] Q
load net reg_file_reg_n_0_[6][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_5[26] -pin reg_file_reg[6][26] Q
load net reg_file_reg_n_0_[6][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_5[27] -pin reg_file_reg[6][27] Q
load net reg_file_reg_n_0_[6][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_5[28] -pin reg_file_reg[6][28] Q
load net reg_file_reg_n_0_[6][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_5[29] -pin reg_file_reg[6][29] Q
load net reg_file_reg_n_0_[6][2] -attr @rip(#000000) 2 -pin perf s_axi_rdata_reg[31]_i_4_5[2] -pin reg_file_reg[6][2] Q
load net reg_file_reg_n_0_[6][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_5[30] -pin reg_file_reg[6][30] Q
load net reg_file_reg_n_0_[6][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_5[31] -pin reg_file_reg[6][31] Q
load net reg_file_reg_n_0_[6][3] -attr @rip(#000000) 3 -pin perf s_axi_rdata_reg[31]_i_4_5[3] -pin reg_file_reg[6][3] Q
load net reg_file_reg_n_0_[6][4] -attr @rip(#000000) 4 -pin perf s_axi_rdata_reg[31]_i_4_5[4] -pin reg_file_reg[6][4] Q
load net reg_file_reg_n_0_[6][5] -attr @rip(#000000) 5 -pin perf s_axi_rdata_reg[31]_i_4_5[5] -pin reg_file_reg[6][5] Q
load net reg_file_reg_n_0_[6][6] -attr @rip(#000000) 6 -pin perf s_axi_rdata_reg[31]_i_4_5[6] -pin reg_file_reg[6][6] Q
load net reg_file_reg_n_0_[6][7] -attr @rip(#000000) 7 -pin perf s_axi_rdata_reg[31]_i_4_5[7] -pin reg_file_reg[6][7] Q
load net reg_file_reg_n_0_[6][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_5[8] -pin reg_file_reg[6][8] Q
load net reg_file_reg_n_0_[6][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_5[9] -pin reg_file_reg[6][9] Q
load net reg_file_reg_n_0_[7][0] -attr @rip(#000000) 0 -pin loader Q[0] -pin perf s_axi_rdata_reg[31]_i_4_4[0] -pin reg_file_reg[7][0] Q
load net reg_file_reg_n_0_[7][10] -attr @rip(#000000) 10 -pin perf s_axi_rdata_reg[31]_i_4_4[10] -pin reg_file_reg[7][10] Q
load net reg_file_reg_n_0_[7][11] -attr @rip(#000000) 11 -pin perf s_axi_rdata_reg[31]_i_4_4[11] -pin reg_file_reg[7][11] Q
load net reg_file_reg_n_0_[7][12] -attr @rip(#000000) 12 -pin perf s_axi_rdata_reg[31]_i_4_4[12] -pin reg_file_reg[7][12] Q
load net reg_file_reg_n_0_[7][13] -attr @rip(#000000) 13 -pin perf s_axi_rdata_reg[31]_i_4_4[13] -pin reg_file_reg[7][13] Q
load net reg_file_reg_n_0_[7][14] -attr @rip(#000000) 14 -pin perf s_axi_rdata_reg[31]_i_4_4[14] -pin reg_file_reg[7][14] Q
load net reg_file_reg_n_0_[7][15] -attr @rip(#000000) 15 -pin perf s_axi_rdata_reg[31]_i_4_4[15] -pin reg_file_reg[7][15] Q
load net reg_file_reg_n_0_[7][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_4[16] -pin reg_file_reg[7][16] Q
load net reg_file_reg_n_0_[7][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_4[17] -pin reg_file_reg[7][17] Q
load net reg_file_reg_n_0_[7][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_4[18] -pin reg_file_reg[7][18] Q
load net reg_file_reg_n_0_[7][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_4[19] -pin reg_file_reg[7][19] Q
load net reg_file_reg_n_0_[7][1] -attr @rip(#000000) 1 -pin loader Q[1] -pin perf s_axi_rdata_reg[31]_i_4_4[1] -pin reg_file_reg[7][1] Q
load net reg_file_reg_n_0_[7][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_4[20] -pin reg_file_reg[7][20] Q
load net reg_file_reg_n_0_[7][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_4[21] -pin reg_file_reg[7][21] Q
load net reg_file_reg_n_0_[7][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_4[22] -pin reg_file_reg[7][22] Q
load net reg_file_reg_n_0_[7][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_4[23] -pin reg_file_reg[7][23] Q
load net reg_file_reg_n_0_[7][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_4[24] -pin reg_file_reg[7][24] Q
load net reg_file_reg_n_0_[7][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_4[25] -pin reg_file_reg[7][25] Q
load net reg_file_reg_n_0_[7][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_4[26] -pin reg_file_reg[7][26] Q
load net reg_file_reg_n_0_[7][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_4[27] -pin reg_file_reg[7][27] Q
load net reg_file_reg_n_0_[7][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_4[28] -pin reg_file_reg[7][28] Q
load net reg_file_reg_n_0_[7][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_4[29] -pin reg_file_reg[7][29] Q
load net reg_file_reg_n_0_[7][2] -attr @rip(#000000) 2 -pin loader Q[2] -pin perf s_axi_rdata_reg[31]_i_4_4[2] -pin reg_file_reg[7][2] Q
load net reg_file_reg_n_0_[7][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_4[30] -pin reg_file_reg[7][30] Q
load net reg_file_reg_n_0_[7][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_4[31] -pin reg_file_reg[7][31] Q
load net reg_file_reg_n_0_[7][3] -attr @rip(#000000) 3 -pin loader Q[3] -pin perf s_axi_rdata_reg[31]_i_4_4[3] -pin reg_file_reg[7][3] Q
load net reg_file_reg_n_0_[7][4] -attr @rip(#000000) 4 -pin loader Q[4] -pin perf s_axi_rdata_reg[31]_i_4_4[4] -pin reg_file_reg[7][4] Q
load net reg_file_reg_n_0_[7][5] -attr @rip(#000000) 5 -pin loader Q[5] -pin perf s_axi_rdata_reg[31]_i_4_4[5] -pin reg_file_reg[7][5] Q
load net reg_file_reg_n_0_[7][6] -attr @rip(#000000) 6 -pin loader Q[6] -pin perf s_axi_rdata_reg[31]_i_4_4[6] -pin reg_file_reg[7][6] Q
load net reg_file_reg_n_0_[7][7] -attr @rip(#000000) 7 -pin loader Q[7] -pin perf s_axi_rdata_reg[31]_i_4_4[7] -pin reg_file_reg[7][7] Q
load net reg_file_reg_n_0_[7][8] -attr @rip(#000000) 8 -pin perf s_axi_rdata_reg[31]_i_4_4[8] -pin reg_file_reg[7][8] Q
load net reg_file_reg_n_0_[7][9] -attr @rip(#000000) 9 -pin perf s_axi_rdata_reg[31]_i_4_4[9] -pin reg_file_reg[7][9] Q
load net reg_file_reg_n_0_[8][0] -attr @rip(#000000) 0 -pin loader cfg_length_reg_reg[15]_0[0] -pin perf s_axi_rdata_reg[31]_i_4_3[0] -pin reg_file_reg[8][0] Q
load net reg_file_reg_n_0_[8][10] -attr @rip(#000000) 10 -pin loader cfg_length_reg_reg[15]_0[10] -pin perf s_axi_rdata_reg[31]_i_4_3[10] -pin reg_file_reg[8][10] Q
load net reg_file_reg_n_0_[8][11] -attr @rip(#000000) 11 -pin loader cfg_length_reg_reg[15]_0[11] -pin perf s_axi_rdata_reg[31]_i_4_3[11] -pin reg_file_reg[8][11] Q
load net reg_file_reg_n_0_[8][12] -attr @rip(#000000) 12 -pin loader cfg_length_reg_reg[15]_0[12] -pin perf s_axi_rdata_reg[31]_i_4_3[12] -pin reg_file_reg[8][12] Q
load net reg_file_reg_n_0_[8][13] -attr @rip(#000000) 13 -pin loader cfg_length_reg_reg[15]_0[13] -pin perf s_axi_rdata_reg[31]_i_4_3[13] -pin reg_file_reg[8][13] Q
load net reg_file_reg_n_0_[8][14] -attr @rip(#000000) 14 -pin loader cfg_length_reg_reg[15]_0[14] -pin perf s_axi_rdata_reg[31]_i_4_3[14] -pin reg_file_reg[8][14] Q
load net reg_file_reg_n_0_[8][15] -attr @rip(#000000) 15 -pin loader cfg_length_reg_reg[15]_0[15] -pin perf s_axi_rdata_reg[31]_i_4_3[15] -pin reg_file_reg[8][15] Q
load net reg_file_reg_n_0_[8][16] -attr @rip(#000000) 16 -pin perf s_axi_rdata_reg[31]_i_4_3[16] -pin reg_file_reg[8][16] Q
load net reg_file_reg_n_0_[8][17] -attr @rip(#000000) 17 -pin perf s_axi_rdata_reg[31]_i_4_3[17] -pin reg_file_reg[8][17] Q
load net reg_file_reg_n_0_[8][18] -attr @rip(#000000) 18 -pin perf s_axi_rdata_reg[31]_i_4_3[18] -pin reg_file_reg[8][18] Q
load net reg_file_reg_n_0_[8][19] -attr @rip(#000000) 19 -pin perf s_axi_rdata_reg[31]_i_4_3[19] -pin reg_file_reg[8][19] Q
load net reg_file_reg_n_0_[8][1] -attr @rip(#000000) 1 -pin loader cfg_length_reg_reg[15]_0[1] -pin perf s_axi_rdata_reg[31]_i_4_3[1] -pin reg_file_reg[8][1] Q
load net reg_file_reg_n_0_[8][20] -attr @rip(#000000) 20 -pin perf s_axi_rdata_reg[31]_i_4_3[20] -pin reg_file_reg[8][20] Q
load net reg_file_reg_n_0_[8][21] -attr @rip(#000000) 21 -pin perf s_axi_rdata_reg[31]_i_4_3[21] -pin reg_file_reg[8][21] Q
load net reg_file_reg_n_0_[8][22] -attr @rip(#000000) 22 -pin perf s_axi_rdata_reg[31]_i_4_3[22] -pin reg_file_reg[8][22] Q
load net reg_file_reg_n_0_[8][23] -attr @rip(#000000) 23 -pin perf s_axi_rdata_reg[31]_i_4_3[23] -pin reg_file_reg[8][23] Q
load net reg_file_reg_n_0_[8][24] -attr @rip(#000000) 24 -pin perf s_axi_rdata_reg[31]_i_4_3[24] -pin reg_file_reg[8][24] Q
load net reg_file_reg_n_0_[8][25] -attr @rip(#000000) 25 -pin perf s_axi_rdata_reg[31]_i_4_3[25] -pin reg_file_reg[8][25] Q
load net reg_file_reg_n_0_[8][26] -attr @rip(#000000) 26 -pin perf s_axi_rdata_reg[31]_i_4_3[26] -pin reg_file_reg[8][26] Q
load net reg_file_reg_n_0_[8][27] -attr @rip(#000000) 27 -pin perf s_axi_rdata_reg[31]_i_4_3[27] -pin reg_file_reg[8][27] Q
load net reg_file_reg_n_0_[8][28] -attr @rip(#000000) 28 -pin perf s_axi_rdata_reg[31]_i_4_3[28] -pin reg_file_reg[8][28] Q
load net reg_file_reg_n_0_[8][29] -attr @rip(#000000) 29 -pin perf s_axi_rdata_reg[31]_i_4_3[29] -pin reg_file_reg[8][29] Q
load net reg_file_reg_n_0_[8][2] -attr @rip(#000000) 2 -pin loader cfg_length_reg_reg[15]_0[2] -pin perf s_axi_rdata_reg[31]_i_4_3[2] -pin reg_file_reg[8][2] Q
load net reg_file_reg_n_0_[8][30] -attr @rip(#000000) 30 -pin perf s_axi_rdata_reg[31]_i_4_3[30] -pin reg_file_reg[8][30] Q
load net reg_file_reg_n_0_[8][31] -attr @rip(#000000) 31 -pin perf s_axi_rdata_reg[31]_i_4_3[31] -pin reg_file_reg[8][31] Q
load net reg_file_reg_n_0_[8][3] -attr @rip(#000000) 3 -pin loader cfg_length_reg_reg[15]_0[3] -pin perf s_axi_rdata_reg[31]_i_4_3[3] -pin reg_file_reg[8][3] Q
load net reg_file_reg_n_0_[8][4] -attr @rip(#000000) 4 -pin loader cfg_length_reg_reg[15]_0[4] -pin perf s_axi_rdata_reg[31]_i_4_3[4] -pin reg_file_reg[8][4] Q
load net reg_file_reg_n_0_[8][5] -attr @rip(#000000) 5 -pin loader cfg_length_reg_reg[15]_0[5] -pin perf s_axi_rdata_reg[31]_i_4_3[5] -pin reg_file_reg[8][5] Q
load net reg_file_reg_n_0_[8][6] -attr @rip(#000000) 6 -pin loader cfg_length_reg_reg[15]_0[6] -pin perf s_axi_rdata_reg[31]_i_4_3[6] -pin reg_file_reg[8][6] Q
load net reg_file_reg_n_0_[8][7] -attr @rip(#000000) 7 -pin loader cfg_length_reg_reg[15]_0[7] -pin perf s_axi_rdata_reg[31]_i_4_3[7] -pin reg_file_reg[8][7] Q
load net reg_file_reg_n_0_[8][8] -attr @rip(#000000) 8 -pin loader cfg_length_reg_reg[15]_0[8] -pin perf s_axi_rdata_reg[31]_i_4_3[8] -pin reg_file_reg[8][8] Q
load net reg_file_reg_n_0_[8][9] -attr @rip(#000000) 9 -pin loader cfg_length_reg_reg[15]_0[9] -pin perf s_axi_rdata_reg[31]_i_4_3[9] -pin reg_file_reg[8][9] Q
load net rst_n -port rst_n -pin rst_n_IBUF_inst I
netloc rst_n 1 0 2 NJ 56890 NJ
load net rst_n_IBUF -pin preproc rst_n_IBUF -pin reset_mgr rst_n_IBUF -pin rst_n_IBUF_inst O
netloc rst_n_IBUF 1 2 7 760 56950 NJ 56950 1880J 56990 NJ 56990 3390J 57150 NJ 57150 5160
load net s_axi_araddr[0] -attr @rip(#000000) s_axi_araddr[0] -port s_axi_araddr[0] -pin s_axi_araddr_IBUF[0]_inst I
load net s_axi_araddr[1] -attr @rip(#000000) s_axi_araddr[1] -port s_axi_araddr[1] -pin s_axi_araddr_IBUF[1]_inst I
load net s_axi_araddr[2] -attr @rip(#000000) s_axi_araddr[2] -port s_axi_araddr[2] -pin s_axi_araddr_IBUF[2]_inst I
load net s_axi_araddr[3] -attr @rip(#000000) s_axi_araddr[3] -port s_axi_araddr[3] -pin s_axi_araddr_IBUF[3]_inst I
load net s_axi_araddr[4] -attr @rip(#000000) s_axi_araddr[4] -port s_axi_araddr[4] -pin s_axi_araddr_IBUF[4]_inst I
load net s_axi_araddr[5] -attr @rip(#000000) s_axi_araddr[5] -port s_axi_araddr[5] -pin s_axi_araddr_IBUF[5]_inst I
load net s_axi_araddr[6] -attr @rip(#000000) s_axi_araddr[6] -port s_axi_araddr[6] -pin s_axi_araddr_IBUF[6]_inst I
load net s_axi_araddr[7] -attr @rip(#000000) s_axi_araddr[7] -port s_axi_araddr[7] -pin s_axi_araddr_IBUF[7]_inst I
load net s_axi_araddr_IBUF[0] -attr @rip(#000000) 0 -pin irq_ctrl s_axi_araddr_IBUF[0] -pin s_axi_araddr_IBUF[0]_inst O
load net s_axi_araddr_IBUF[1] -attr @rip(#000000) 1 -pin irq_ctrl s_axi_araddr_IBUF[1] -pin s_axi_araddr_IBUF[1]_inst O
load net s_axi_araddr_IBUF[2] -pin dma_bridge s_axi_araddr_IBUF[0] -pin irq_ctrl s_axi_araddr_IBUF[2] -pin perf s_axi_araddr_IBUF[0] -pin s_axi_araddr_IBUF[2]_inst O
load net s_axi_araddr_IBUF[3] -pin dma_bridge s_axi_araddr_IBUF[1] -pin irq_ctrl s_axi_araddr_IBUF[3] -pin perf s_axi_araddr_IBUF[1] -pin s_axi_araddr_IBUF[3]_inst O
load net s_axi_araddr_IBUF[4] -pin dma_bridge s_axi_araddr_IBUF[2] -pin irq_ctrl s_axi_araddr_IBUF[4] -pin perf s_axi_araddr_IBUF[2] -pin s_axi_araddr_IBUF[4]_inst O
load net s_axi_araddr_IBUF[5] -pin irq_ctrl s_axi_araddr_IBUF[5] -pin perf s_axi_araddr_IBUF[3] -pin s_axi_araddr_IBUF[5]_inst O
load net s_axi_araddr_IBUF[6] -pin dma_bridge s_axi_araddr_IBUF[3] -pin irq_ctrl s_axi_araddr_IBUF[6] -pin s_axi_araddr_IBUF[6]_inst O -pin s_axi_arready_OBUF_inst_i_1 I0 -pin s_axi_arready_reg_i_1 I2 -pin s_axi_rdata_reg[31]_i_1 I0 -pin s_axi_rresp_OBUF[1]_inst_i_1 I0 -pin s_axi_rvalid_OBUF_inst_i_1 I2 -pin s_axi_rvalid_reg_i_1 I3
load net s_axi_araddr_IBUF[7] -pin dma_bridge s_axi_araddr_IBUF[4] -pin irq_ctrl s_axi_araddr_IBUF[7] -pin s_axi_araddr_IBUF[7]_inst O -pin s_axi_arready_OBUF_inst_i_1 I1 -pin s_axi_arready_reg_i_1 I1 -pin s_axi_rdata_reg[31]_i_1 I2 -pin s_axi_rresp_OBUF[1]_inst_i_1 I1 -pin s_axi_rvalid_OBUF_inst_i_1 I1 -pin s_axi_rvalid_reg_i_1 I4
load net s_axi_arready -port s_axi_arready -pin s_axi_arready_OBUF_inst O
netloc s_axi_arready 1 15 1 NJ 61480
load net s_axi_arready_OBUF -pin s_axi_arready_OBUF_inst I -pin s_axi_arready_OBUF_inst_i_1 O
netloc s_axi_arready_OBUF 1 14 1 8420J 61420n
load net s_axi_arready_reg -pin s_axi_arready_OBUF_inst_i_1 I2 -pin s_axi_arready_reg_i_1 I3 -pin s_axi_arready_reg_reg Q
netloc s_axi_arready_reg 1 11 3 7160 61150 NJ 61150 7930
load net s_axi_arready_reg_i_1_n_0 -pin s_axi_arready_reg_i_1 O -pin s_axi_arready_reg_reg D
netloc s_axi_arready_reg_i_1_n_0 1 12 1 N 61280
load net s_axi_arvalid -port s_axi_arvalid -pin s_axi_arvalid_IBUF_inst I
netloc s_axi_arvalid 1 0 4 NJ 56940 NJ 56940 740J 56930 1460J
load net s_axi_arvalid_IBUF -pin irq_ctrl s_axi_arvalid_IBUF -pin s_axi_arready_reg_i_1 I0 -pin s_axi_arvalid_IBUF_inst O -pin s_axi_rdata_reg[31]_i_1 I1 -pin s_axi_rvalid_OBUF_inst_i_1 I0 -pin s_axi_rvalid_reg_i_1 I2
netloc s_axi_arvalid_IBUF 1 4 10 1840 57270 NJ 57270 3710 57130 NJ 57130 NJ 57130 5640J 57150 NJ 57150 6900 61510 NJ 61510 NJ
load net s_axi_awaddr[0] -attr @rip(#000000) s_axi_awaddr[0] -port s_axi_awaddr[0] -pin s_axi_awaddr_IBUF[0]_inst I
load net s_axi_awaddr[1] -attr @rip(#000000) s_axi_awaddr[1] -port s_axi_awaddr[1] -pin s_axi_awaddr_IBUF[1]_inst I
load net s_axi_awaddr[2] -attr @rip(#000000) s_axi_awaddr[2] -port s_axi_awaddr[2] -pin s_axi_awaddr_IBUF[2]_inst I
load net s_axi_awaddr[3] -attr @rip(#000000) s_axi_awaddr[3] -port s_axi_awaddr[3] -pin s_axi_awaddr_IBUF[3]_inst I
load net s_axi_awaddr[4] -attr @rip(#000000) s_axi_awaddr[4] -port s_axi_awaddr[4] -pin s_axi_awaddr_IBUF[4]_inst I
load net s_axi_awaddr[5] -attr @rip(#000000) s_axi_awaddr[5] -port s_axi_awaddr[5] -pin s_axi_awaddr_IBUF[5]_inst I
load net s_axi_awaddr[6] -attr @rip(#000000) s_axi_awaddr[6] -port s_axi_awaddr[6] -pin s_axi_awaddr_IBUF[6]_inst I
load net s_axi_awaddr[7] -attr @rip(#000000) s_axi_awaddr[7] -port s_axi_awaddr[7] -pin s_axi_awaddr_IBUF[7]_inst I
load net s_axi_awaddr_IBUF[0] -attr @rip(#000000) 0 -pin irq_ctrl s_axi_awaddr_IBUF[0] -pin s_axi_awaddr_IBUF[0]_inst O
load net s_axi_awaddr_IBUF[1] -attr @rip(#000000) 1 -pin irq_ctrl s_axi_awaddr_IBUF[1] -pin s_axi_awaddr_IBUF[1]_inst O
load net s_axi_awaddr_IBUF[2] -pin dma_bridge s_axi_awaddr_IBUF[0] -pin irq_ctrl s_axi_awaddr_IBUF[2] -pin reg_file[0][31]_i_2 I2 -pin reg_file[1][31]_i_2 I2 -pin reg_file[8][31]_i_2 I2 -pin reg_file[9][31]_i_2 I2 -pin s_axi_awaddr_IBUF[2]_inst O
load net s_axi_awaddr_IBUF[3] -pin dma_bridge s_axi_awaddr_IBUF[1] -pin irq_ctrl s_axi_awaddr_IBUF[3] -pin reg_file[0][15]_i_1 I1 -pin reg_file[0][23]_i_1 I1 -pin reg_file[0][31]_i_1 I1 -pin reg_file[0][7]_i_1 I1 -pin reg_file[10][15]_i_1 I1 -pin reg_file[10][23]_i_1 I1 -pin reg_file[10][31]_i_1 I1 -pin reg_file[10][7]_i_1 I1 -pin reg_file[11][15]_i_1 I1 -pin reg_file[11][23]_i_1 I1 -pin reg_file[11][31]_i_1 I1 -pin reg_file[11][7]_i_1 I1 -pin reg_file[12][15]_i_1 I2 -pin reg_file[12][23]_i_1 I2 -pin reg_file[12][31]_i_1 I2 -pin reg_file[12][7]_i_1 I2 -pin reg_file[13][15]_i_1 I2 -pin reg_file[13][23]_i_1 I2 -pin reg_file[13][31]_i_1 I2 -pin reg_file[13][7]_i_1 I2 -pin reg_file[14][15]_i_1 I1 -pin reg_file[14][23]_i_1 I1 -pin reg_file[14][31]_i_1 I1 -pin reg_file[14][7]_i_1 I1 -pin reg_file[15][15]_i_1 I1 -pin reg_file[15][23]_i_1 I1 -pin reg_file[15][31]_i_1 I1 -pin reg_file[15][7]_i_1 I1 -pin reg_file[1][15]_i_1 I1 -pin reg_file[1][23]_i_1 I1 -pin reg_file[1][31]_i_1 I1 -pin reg_file[1][7]_i_1 I1 -pin reg_file[2][15]_i_1 I1 -pin reg_file[2][23]_i_1 I1 -pin reg_file[2][31]_i_1 I1 -pin reg_file[2][7]_i_1 I1 -pin reg_file[3][15]_i_1 I1 -pin reg_file[3][23]_i_1 I1 -pin reg_file[3][31]_i_1 I1 -pin reg_file[3][7]_i_1 I1 -pin reg_file[4][15]_i_1 I2 -pin reg_file[4][23]_i_1 I2 -pin reg_file[4][31]_i_1 I2 -pin reg_file[4][7]_i_1 I2 -pin reg_file[5][15]_i_1 I2 -pin reg_file[5][23]_i_1 I2 -pin reg_file[5][31]_i_1 I2 -pin reg_file[5][7]_i_1 I2 -pin reg_file[6][15]_i_1 I1 -pin reg_file[6][23]_i_1 I1 -pin reg_file[6][31]_i_1 I1 -pin reg_file[6][7]_i_1 I1 -pin reg_file[7][15]_i_1 I1 -pin reg_file[7][23]_i_1 I1 -pin reg_file[7][31]_i_1 I1 -pin reg_file[7][7]_i_1 I1 -pin reg_file[8][15]_i_1 I1 -pin reg_file[8][23]_i_1 I1 -pin reg_file[8][31]_i_1 I1 -pin reg_file[8][7]_i_1 I1 -pin reg_file[9][15]_i_1 I1 -pin reg_file[9][23]_i_1 I1 -pin reg_file[9][31]_i_1 I1 -pin reg_file[9][7]_i_1 I1 -pin s_axi_awaddr_IBUF[3]_inst O
load net s_axi_awaddr_IBUF[4] -pin dma_bridge s_axi_awaddr_IBUF[2] -pin irq_ctrl s_axi_awaddr_IBUF[4] -pin reg_file[0][15]_i_1 I2 -pin reg_file[0][23]_i_1 I2 -pin reg_file[0][31]_i_1 I2 -pin reg_file[0][7]_i_1 I2 -pin reg_file[10][15]_i_1 I2 -pin reg_file[10][23]_i_1 I2 -pin reg_file[10][31]_i_1 I2 -pin reg_file[10][7]_i_1 I2 -pin reg_file[11][15]_i_1 I2 -pin reg_file[11][23]_i_1 I2 -pin reg_file[11][31]_i_1 I2 -pin reg_file[11][7]_i_1 I2 -pin reg_file[12][15]_i_1 I1 -pin reg_file[12][23]_i_1 I1 -pin reg_file[12][31]_i_1 I1 -pin reg_file[12][7]_i_1 I1 -pin reg_file[13][15]_i_1 I1 -pin reg_file[13][23]_i_1 I1 -pin reg_file[13][31]_i_1 I1 -pin reg_file[13][7]_i_1 I1 -pin reg_file[14][15]_i_1 I2 -pin reg_file[14][23]_i_1 I2 -pin reg_file[14][31]_i_1 I2 -pin reg_file[14][7]_i_1 I2 -pin reg_file[15][15]_i_1 I2 -pin reg_file[15][23]_i_1 I2 -pin reg_file[15][31]_i_1 I2 -pin reg_file[15][7]_i_1 I2 -pin reg_file[1][15]_i_1 I2 -pin reg_file[1][23]_i_1 I2 -pin reg_file[1][31]_i_1 I2 -pin reg_file[1][7]_i_1 I2 -pin reg_file[2][15]_i_1 I2 -pin reg_file[2][23]_i_1 I2 -pin reg_file[2][31]_i_1 I2 -pin reg_file[2][7]_i_1 I2 -pin reg_file[3][15]_i_1 I2 -pin reg_file[3][23]_i_1 I2 -pin reg_file[3][31]_i_1 I2 -pin reg_file[3][7]_i_1 I2 -pin reg_file[4][15]_i_1 I1 -pin reg_file[4][23]_i_1 I1 -pin reg_file[4][31]_i_1 I1 -pin reg_file[4][7]_i_1 I1 -pin reg_file[5][15]_i_1 I1 -pin reg_file[5][23]_i_1 I1 -pin reg_file[5][31]_i_1 I1 -pin reg_file[5][7]_i_1 I1 -pin reg_file[6][15]_i_1 I2 -pin reg_file[6][23]_i_1 I2 -pin reg_file[6][31]_i_1 I2 -pin reg_file[6][7]_i_1 I2 -pin reg_file[7][15]_i_1 I2 -pin reg_file[7][23]_i_1 I2 -pin reg_file[7][31]_i_1 I2 -pin reg_file[7][7]_i_1 I2 -pin reg_file[8][15]_i_1 I2 -pin reg_file[8][23]_i_1 I2 -pin reg_file[8][31]_i_1 I2 -pin reg_file[8][7]_i_1 I2 -pin reg_file[9][15]_i_1 I2 -pin reg_file[9][23]_i_1 I2 -pin reg_file[9][31]_i_1 I2 -pin reg_file[9][7]_i_1 I2 -pin s_axi_awaddr_IBUF[4]_inst O
load net s_axi_awaddr_IBUF[5] -attr @rip(#000000) 5 -pin irq_ctrl s_axi_awaddr_IBUF[5] -pin reg_file[0][31]_i_2 I5 -pin reg_file[1][31]_i_2 I5 -pin reg_file[8][31]_i_2 I5 -pin reg_file[9][31]_i_2 I5 -pin s_axi_awaddr_IBUF[5]_inst O
load net s_axi_awaddr_IBUF[6] -pin dma_bridge s_axi_awaddr_IBUF[3] -pin irq_ctrl s_axi_awaddr_IBUF[6] -pin reg_file[0][31]_i_2 I0 -pin reg_file[1][31]_i_2 I0 -pin reg_file[8][31]_i_2 I0 -pin reg_file[9][31]_i_2 I0 -pin s_axi_awaddr_IBUF[6]_inst O -pin s_axi_awready_OBUF_inst_i_1 I0 -pin s_axi_awready_reg_i_1 I0 -pin s_axi_bresp_OBUF[1]_inst_i_1 I0 -pin s_axi_bvalid_OBUF_inst_i_1 I3 -pin s_axi_bvalid_reg_i_1 I0 -pin s_axi_wready_OBUF_inst_i_1 I0
load net s_axi_awaddr_IBUF[7] -pin dma_bridge s_axi_awaddr_IBUF[4] -pin irq_ctrl s_axi_awaddr_IBUF[7] -pin reg_file[0][31]_i_2 I1 -pin reg_file[1][31]_i_2 I1 -pin reg_file[8][31]_i_2 I1 -pin reg_file[9][31]_i_2 I1 -pin s_axi_awaddr_IBUF[7]_inst O -pin s_axi_awready_OBUF_inst_i_1 I1 -pin s_axi_awready_reg_i_1 I1 -pin s_axi_bresp_OBUF[1]_inst_i_1 I1 -pin s_axi_bvalid_OBUF_inst_i_1 I4 -pin s_axi_bvalid_reg_i_1 I1 -pin s_axi_wready_OBUF_inst_i_1 I1
load net s_axi_awready -port s_axi_awready -pin s_axi_awready_OBUF_inst O
netloc s_axi_awready 1 15 1 NJ 57280
load net s_axi_awready_OBUF -pin s_axi_awready_OBUF_inst I -pin s_axi_awready_OBUF_inst_i_1 O
netloc s_axi_awready_OBUF 1 14 1 8620J 57240n
load net s_axi_awready_reg -pin s_axi_awready_OBUF_inst_i_1 I2 -pin s_axi_awready_reg_reg Q
netloc s_axi_awready_reg 1 13 1 7970 57170n
load net s_axi_awvalid -port s_axi_awvalid -pin s_axi_awvalid_IBUF_inst I
netloc s_axi_awvalid 1 0 1 NJ 55160
load net s_axi_awvalid_IBUF -pin dma_bridge s_axi_awvalid_IBUF -pin irq_ctrl s_axi_awvalid_IBUF -pin reg_file[0][31]_i_2 I4 -pin reg_file[1][31]_i_2 I4 -pin reg_file[8][31]_i_2 I4 -pin reg_file[9][31]_i_2 I4 -pin s_axi_awready_reg_reg D -pin s_axi_awvalid_IBUF_inst O -pin s_axi_bvalid_reg_i_1 I4
netloc s_axi_awvalid_IBUF 1 1 12 340 56490 NJ 56490 NJ 56490 NJ 56490 2750J 56200 3550 56250 4510 56440 NJ 56440 NJ 56440 NJ 56440 7140 57090 7540J
load net s_axi_bready -port s_axi_bready -pin s_axi_bready_IBUF_inst I
netloc s_axi_bready 1 0 11 NJ 56530 NJ 56530 NJ 56530 NJ 56530 NJ 56530 2770J 56240 3470J 56650 4510J 56590 5080J 56910 5720J 56670 6400J
load net s_axi_bready_IBUF -pin s_axi_bready_IBUF_inst O -pin s_axi_bvalid_OBUF_inst_i_1 I0 -pin s_axi_bvalid_reg_i_1 I3
netloc s_axi_bready_IBUF 1 11 3 6980 55970 NJ 55970 NJ
load net s_axi_bresp[0] -attr @rip(#000000) 0 -port s_axi_bresp[0] -pin s_axi_bresp_OBUF[0]_inst O
load net s_axi_bresp[1] -attr @rip(#000000) 1 -port s_axi_bresp[1] -pin s_axi_bresp_OBUF[1]_inst O
load net s_axi_bresp_OBUF[0] -pin s_axi_bresp_OBUF[0]_inst I -pin s_axi_bresp_OBUF[1]_inst I -pin s_axi_bresp_OBUF[1]_inst_i_1 O
netloc s_axi_bresp_OBUF[0] 1 14 1 8460 55320n
load net s_axi_bvalid -port s_axi_bvalid -pin s_axi_bvalid_OBUF_inst O
netloc s_axi_bvalid 1 15 1 NJ 55810
load net s_axi_bvalid_OBUF -pin s_axi_bvalid_OBUF_inst I -pin s_axi_bvalid_OBUF_inst_i_1 O
netloc s_axi_bvalid_OBUF 1 14 1 8580J 55810n
load net s_axi_bvalid_irq -pin irq_ctrl s_axi_bvalid_irq -pin s_axi_bvalid_OBUF_inst_i_1 I2
netloc s_axi_bvalid_irq 1 7 7 4270 56010 NJ 56010 NJ 56010 NJ 56010 NJ 56010 NJ 56010 NJ
load net s_axi_bvalid_reg -pin s_axi_bvalid_OBUF_inst_i_1 I1 -pin s_axi_bvalid_reg_i_1 I2 -pin s_axi_bvalid_reg_reg Q
netloc s_axi_bvalid_reg 1 11 3 7160 57010 NJ 57010 7870
load net s_axi_bvalid_reg_i_1_n_0 -pin s_axi_bvalid_reg_i_1 O -pin s_axi_bvalid_reg_reg D
netloc s_axi_bvalid_reg_i_1_n_0 1 12 1 7540 56910n
load net s_axi_rdata[0] -attr @rip(#000000) 0 -port s_axi_rdata[0] -pin s_axi_rdata_OBUF[0]_inst O
load net s_axi_rdata[10] -attr @rip(#000000) 10 -port s_axi_rdata[10] -pin s_axi_rdata_OBUF[10]_inst O
load net s_axi_rdata[11] -attr @rip(#000000) 11 -port s_axi_rdata[11] -pin s_axi_rdata_OBUF[11]_inst O
load net s_axi_rdata[12] -attr @rip(#000000) 12 -port s_axi_rdata[12] -pin s_axi_rdata_OBUF[12]_inst O
load net s_axi_rdata[13] -attr @rip(#000000) 13 -port s_axi_rdata[13] -pin s_axi_rdata_OBUF[13]_inst O
load net s_axi_rdata[14] -attr @rip(#000000) 14 -port s_axi_rdata[14] -pin s_axi_rdata_OBUF[14]_inst O
load net s_axi_rdata[15] -attr @rip(#000000) 15 -port s_axi_rdata[15] -pin s_axi_rdata_OBUF[15]_inst O
load net s_axi_rdata[16] -attr @rip(#000000) 16 -port s_axi_rdata[16] -pin s_axi_rdata_OBUF[16]_inst O
load net s_axi_rdata[17] -attr @rip(#000000) 17 -port s_axi_rdata[17] -pin s_axi_rdata_OBUF[17]_inst O
load net s_axi_rdata[18] -attr @rip(#000000) 18 -port s_axi_rdata[18] -pin s_axi_rdata_OBUF[18]_inst O
load net s_axi_rdata[19] -attr @rip(#000000) 19 -port s_axi_rdata[19] -pin s_axi_rdata_OBUF[19]_inst O
load net s_axi_rdata[1] -attr @rip(#000000) 1 -port s_axi_rdata[1] -pin s_axi_rdata_OBUF[1]_inst O
load net s_axi_rdata[20] -attr @rip(#000000) 20 -port s_axi_rdata[20] -pin s_axi_rdata_OBUF[20]_inst O
load net s_axi_rdata[21] -attr @rip(#000000) 21 -port s_axi_rdata[21] -pin s_axi_rdata_OBUF[21]_inst O
load net s_axi_rdata[22] -attr @rip(#000000) 22 -port s_axi_rdata[22] -pin s_axi_rdata_OBUF[22]_inst O
load net s_axi_rdata[23] -attr @rip(#000000) 23 -port s_axi_rdata[23] -pin s_axi_rdata_OBUF[23]_inst O
load net s_axi_rdata[24] -attr @rip(#000000) 24 -port s_axi_rdata[24] -pin s_axi_rdata_OBUF[24]_inst O
load net s_axi_rdata[25] -attr @rip(#000000) 25 -port s_axi_rdata[25] -pin s_axi_rdata_OBUF[25]_inst O
load net s_axi_rdata[26] -attr @rip(#000000) 26 -port s_axi_rdata[26] -pin s_axi_rdata_OBUF[26]_inst O
load net s_axi_rdata[27] -attr @rip(#000000) 27 -port s_axi_rdata[27] -pin s_axi_rdata_OBUF[27]_inst O
load net s_axi_rdata[28] -attr @rip(#000000) 28 -port s_axi_rdata[28] -pin s_axi_rdata_OBUF[28]_inst O
load net s_axi_rdata[29] -attr @rip(#000000) 29 -port s_axi_rdata[29] -pin s_axi_rdata_OBUF[29]_inst O
load net s_axi_rdata[2] -attr @rip(#000000) 2 -port s_axi_rdata[2] -pin s_axi_rdata_OBUF[2]_inst O
load net s_axi_rdata[30] -attr @rip(#000000) 30 -port s_axi_rdata[30] -pin s_axi_rdata_OBUF[30]_inst O
load net s_axi_rdata[31] -attr @rip(#000000) 31 -port s_axi_rdata[31] -pin s_axi_rdata_OBUF[31]_inst O
load net s_axi_rdata[3] -attr @rip(#000000) 3 -port s_axi_rdata[3] -pin s_axi_rdata_OBUF[3]_inst O
load net s_axi_rdata[4] -attr @rip(#000000) 4 -port s_axi_rdata[4] -pin s_axi_rdata_OBUF[4]_inst O
load net s_axi_rdata[5] -attr @rip(#000000) 5 -port s_axi_rdata[5] -pin s_axi_rdata_OBUF[5]_inst O
load net s_axi_rdata[6] -attr @rip(#000000) 6 -port s_axi_rdata[6] -pin s_axi_rdata_OBUF[6]_inst O
load net s_axi_rdata[7] -attr @rip(#000000) 7 -port s_axi_rdata[7] -pin s_axi_rdata_OBUF[7]_inst O
load net s_axi_rdata[8] -attr @rip(#000000) 8 -port s_axi_rdata[8] -pin s_axi_rdata_OBUF[8]_inst O
load net s_axi_rdata[9] -attr @rip(#000000) 9 -port s_axi_rdata[9] -pin s_axi_rdata_OBUF[9]_inst O
load net s_axi_rdata_OBUF[0] -attr @rip(#000000) s_axi_rdata_OBUF[0] -pin dma_bridge s_axi_rdata_OBUF[0] -pin s_axi_rdata_OBUF[0]_inst I
load net s_axi_rdata_OBUF[10] -attr @rip(#000000) s_axi_rdata_OBUF[4] -pin dma_bridge s_axi_rdata_OBUF[4] -pin s_axi_rdata_OBUF[10]_inst I
load net s_axi_rdata_OBUF[11] -attr @rip(#000000) s_axi_rdata_OBUF[5] -pin dma_bridge s_axi_rdata_OBUF[5] -pin s_axi_rdata_OBUF[11]_inst I
load net s_axi_rdata_OBUF[12] -attr @rip(#000000) s_axi_rdata_OBUF[6] -pin dma_bridge s_axi_rdata_OBUF[6] -pin s_axi_rdata_OBUF[12]_inst I
load net s_axi_rdata_OBUF[13] -attr @rip(#000000) s_axi_rdata_OBUF[7] -pin dma_bridge s_axi_rdata_OBUF[7] -pin s_axi_rdata_OBUF[13]_inst I
load net s_axi_rdata_OBUF[14] -attr @rip(#000000) s_axi_rdata_OBUF[8] -pin dma_bridge s_axi_rdata_OBUF[8] -pin s_axi_rdata_OBUF[14]_inst I
load net s_axi_rdata_OBUF[15] -attr @rip(#000000) s_axi_rdata_OBUF[9] -pin dma_bridge s_axi_rdata_OBUF[9] -pin s_axi_rdata_OBUF[15]_inst I
load net s_axi_rdata_OBUF[16] -attr @rip(#000000) s_axi_rdata_OBUF[10] -pin dma_bridge s_axi_rdata_OBUF[10] -pin s_axi_rdata_OBUF[16]_inst I
load net s_axi_rdata_OBUF[17] -attr @rip(#000000) s_axi_rdata_OBUF[11] -pin dma_bridge s_axi_rdata_OBUF[11] -pin s_axi_rdata_OBUF[17]_inst I
load net s_axi_rdata_OBUF[18] -attr @rip(#000000) s_axi_rdata_OBUF[12] -pin dma_bridge s_axi_rdata_OBUF[12] -pin s_axi_rdata_OBUF[18]_inst I
load net s_axi_rdata_OBUF[19] -attr @rip(#000000) s_axi_rdata_OBUF[13] -pin dma_bridge s_axi_rdata_OBUF[13] -pin s_axi_rdata_OBUF[19]_inst I
load net s_axi_rdata_OBUF[1] -attr @rip(#000000) s_axi_rdata_OBUF[1] -pin dma_bridge s_axi_rdata_OBUF[1] -pin s_axi_rdata_OBUF[1]_inst I
load net s_axi_rdata_OBUF[20] -attr @rip(#000000) s_axi_rdata_OBUF[14] -pin dma_bridge s_axi_rdata_OBUF[14] -pin s_axi_rdata_OBUF[20]_inst I
load net s_axi_rdata_OBUF[21] -attr @rip(#000000) s_axi_rdata_OBUF[15] -pin dma_bridge s_axi_rdata_OBUF[15] -pin s_axi_rdata_OBUF[21]_inst I
load net s_axi_rdata_OBUF[22] -attr @rip(#000000) s_axi_rdata_OBUF[16] -pin dma_bridge s_axi_rdata_OBUF[16] -pin s_axi_rdata_OBUF[22]_inst I
load net s_axi_rdata_OBUF[23] -attr @rip(#000000) s_axi_rdata_OBUF[17] -pin dma_bridge s_axi_rdata_OBUF[17] -pin s_axi_rdata_OBUF[23]_inst I
load net s_axi_rdata_OBUF[24] -attr @rip(#000000) s_axi_rdata_OBUF[18] -pin dma_bridge s_axi_rdata_OBUF[18] -pin s_axi_rdata_OBUF[24]_inst I
load net s_axi_rdata_OBUF[25] -attr @rip(#000000) s_axi_rdata_OBUF[19] -pin dma_bridge s_axi_rdata_OBUF[19] -pin s_axi_rdata_OBUF[25]_inst I
load net s_axi_rdata_OBUF[26] -attr @rip(#000000) s_axi_rdata_OBUF[20] -pin dma_bridge s_axi_rdata_OBUF[20] -pin s_axi_rdata_OBUF[26]_inst I
load net s_axi_rdata_OBUF[27] -attr @rip(#000000) s_axi_rdata_OBUF[21] -pin dma_bridge s_axi_rdata_OBUF[21] -pin s_axi_rdata_OBUF[27]_inst I
load net s_axi_rdata_OBUF[28] -attr @rip(#000000) s_axi_rdata_OBUF[22] -pin dma_bridge s_axi_rdata_OBUF[22] -pin s_axi_rdata_OBUF[28]_inst I
load net s_axi_rdata_OBUF[29] -attr @rip(#000000) s_axi_rdata_OBUF[23] -pin dma_bridge s_axi_rdata_OBUF[23] -pin s_axi_rdata_OBUF[29]_inst I
load net s_axi_rdata_OBUF[2] -attr @rip(#000000) s_axi_rdata_OBUF[0] -pin irq_ctrl s_axi_rdata_OBUF[0] -pin s_axi_rdata_OBUF[2]_inst I
load net s_axi_rdata_OBUF[30] -attr @rip(#000000) s_axi_rdata_OBUF[24] -pin dma_bridge s_axi_rdata_OBUF[24] -pin s_axi_rdata_OBUF[30]_inst I
load net s_axi_rdata_OBUF[31] -attr @rip(#000000) s_axi_rdata_OBUF[25] -pin dma_bridge s_axi_rdata_OBUF[25] -pin s_axi_rdata_OBUF[31]_inst I
load net s_axi_rdata_OBUF[3] -attr @rip(#000000) s_axi_rdata_OBUF[1] -pin irq_ctrl s_axi_rdata_OBUF[1] -pin s_axi_rdata_OBUF[3]_inst I
load net s_axi_rdata_OBUF[4] -attr @rip(#000000) s_axi_rdata_OBUF[2] -pin irq_ctrl s_axi_rdata_OBUF[2] -pin s_axi_rdata_OBUF[4]_inst I
load net s_axi_rdata_OBUF[5] -attr @rip(#000000) s_axi_rdata_OBUF[3] -pin irq_ctrl s_axi_rdata_OBUF[3] -pin s_axi_rdata_OBUF[5]_inst I
load net s_axi_rdata_OBUF[6] -attr @rip(#000000) s_axi_rdata_OBUF[4] -pin irq_ctrl s_axi_rdata_OBUF[4] -pin s_axi_rdata_OBUF[6]_inst I
load net s_axi_rdata_OBUF[7] -attr @rip(#000000) s_axi_rdata_OBUF[5] -pin irq_ctrl s_axi_rdata_OBUF[5] -pin s_axi_rdata_OBUF[7]_inst I
load net s_axi_rdata_OBUF[8] -attr @rip(#000000) s_axi_rdata_OBUF[2] -pin dma_bridge s_axi_rdata_OBUF[2] -pin s_axi_rdata_OBUF[8]_inst I
load net s_axi_rdata_OBUF[9] -attr @rip(#000000) s_axi_rdata_OBUF[3] -pin dma_bridge s_axi_rdata_OBUF[3] -pin s_axi_rdata_OBUF[9]_inst I
load net s_axi_rdata_dma[2] -attr @rip(#000000) rd_addr_reg_reg[7]_0[0] -pin dma_bridge rd_addr_reg_reg[7]_0[0] -pin irq_ctrl s_axi_rdata[7][0]
load net s_axi_rdata_dma[3] -attr @rip(#000000) rd_addr_reg_reg[7]_0[1] -pin dma_bridge rd_addr_reg_reg[7]_0[1] -pin irq_ctrl s_axi_rdata[7][1]
load net s_axi_rdata_dma[4] -attr @rip(#000000) rd_addr_reg_reg[7]_0[2] -pin dma_bridge rd_addr_reg_reg[7]_0[2] -pin irq_ctrl s_axi_rdata[7][2]
load net s_axi_rdata_dma[5] -attr @rip(#000000) rd_addr_reg_reg[7]_0[3] -pin dma_bridge rd_addr_reg_reg[7]_0[3] -pin irq_ctrl s_axi_rdata[7][3]
load net s_axi_rdata_dma[6] -attr @rip(#000000) rd_addr_reg_reg[7]_0[4] -pin dma_bridge rd_addr_reg_reg[7]_0[4] -pin irq_ctrl s_axi_rdata[7][4]
load net s_axi_rdata_dma[7] -attr @rip(#000000) rd_addr_reg_reg[7]_0[5] -pin dma_bridge rd_addr_reg_reg[7]_0[5] -pin irq_ctrl s_axi_rdata[7][5]
load net s_axi_rdata_irq[0] -attr @rip(#000000) s_axi_rdata[0] -pin dma_bridge s_axi_rdata[1][0] -pin irq_ctrl s_axi_rdata[0]
load net s_axi_rdata_irq[1] -attr @rip(#000000) s_axi_rdata[1] -pin dma_bridge s_axi_rdata[1][1] -pin irq_ctrl s_axi_rdata[1]
load net s_axi_rdata_reg[0] -attr @rip(#000000) 0 -pin dma_bridge s_axi_rdata[31][0] -pin s_axi_rdata_reg_reg[0] Q
load net s_axi_rdata_reg[10] -attr @rip(#000000) 4 -pin dma_bridge s_axi_rdata[31][4] -pin s_axi_rdata_reg_reg[10] Q
load net s_axi_rdata_reg[11] -attr @rip(#000000) 5 -pin dma_bridge s_axi_rdata[31][5] -pin s_axi_rdata_reg_reg[11] Q
load net s_axi_rdata_reg[12] -attr @rip(#000000) 6 -pin dma_bridge s_axi_rdata[31][6] -pin s_axi_rdata_reg_reg[12] Q
load net s_axi_rdata_reg[13] -attr @rip(#000000) 7 -pin dma_bridge s_axi_rdata[31][7] -pin s_axi_rdata_reg_reg[13] Q
load net s_axi_rdata_reg[14] -attr @rip(#000000) 8 -pin dma_bridge s_axi_rdata[31][8] -pin s_axi_rdata_reg_reg[14] Q
load net s_axi_rdata_reg[15] -attr @rip(#000000) 9 -pin dma_bridge s_axi_rdata[31][9] -pin s_axi_rdata_reg_reg[15] Q
load net s_axi_rdata_reg[16] -attr @rip(#000000) 10 -pin dma_bridge s_axi_rdata[31][10] -pin s_axi_rdata_reg_reg[16] Q
load net s_axi_rdata_reg[17] -attr @rip(#000000) 11 -pin dma_bridge s_axi_rdata[31][11] -pin s_axi_rdata_reg_reg[17] Q
load net s_axi_rdata_reg[18] -attr @rip(#000000) 12 -pin dma_bridge s_axi_rdata[31][12] -pin s_axi_rdata_reg_reg[18] Q
load net s_axi_rdata_reg[19] -attr @rip(#000000) 13 -pin dma_bridge s_axi_rdata[31][13] -pin s_axi_rdata_reg_reg[19] Q
load net s_axi_rdata_reg[1] -attr @rip(#000000) 1 -pin dma_bridge s_axi_rdata[31][1] -pin s_axi_rdata_reg_reg[1] Q
load net s_axi_rdata_reg[20] -attr @rip(#000000) 14 -pin dma_bridge s_axi_rdata[31][14] -pin s_axi_rdata_reg_reg[20] Q
load net s_axi_rdata_reg[21] -attr @rip(#000000) 15 -pin dma_bridge s_axi_rdata[31][15] -pin s_axi_rdata_reg_reg[21] Q
load net s_axi_rdata_reg[22] -attr @rip(#000000) 16 -pin dma_bridge s_axi_rdata[31][16] -pin s_axi_rdata_reg_reg[22] Q
load net s_axi_rdata_reg[23] -attr @rip(#000000) 17 -pin dma_bridge s_axi_rdata[31][17] -pin s_axi_rdata_reg_reg[23] Q
load net s_axi_rdata_reg[24] -attr @rip(#000000) 18 -pin dma_bridge s_axi_rdata[31][18] -pin s_axi_rdata_reg_reg[24] Q
load net s_axi_rdata_reg[25] -attr @rip(#000000) 19 -pin dma_bridge s_axi_rdata[31][19] -pin s_axi_rdata_reg_reg[25] Q
load net s_axi_rdata_reg[26] -attr @rip(#000000) 20 -pin dma_bridge s_axi_rdata[31][20] -pin s_axi_rdata_reg_reg[26] Q
load net s_axi_rdata_reg[27] -attr @rip(#000000) 21 -pin dma_bridge s_axi_rdata[31][21] -pin s_axi_rdata_reg_reg[27] Q
load net s_axi_rdata_reg[28] -attr @rip(#000000) 22 -pin dma_bridge s_axi_rdata[31][22] -pin s_axi_rdata_reg_reg[28] Q
load net s_axi_rdata_reg[29] -attr @rip(#000000) 23 -pin dma_bridge s_axi_rdata[31][23] -pin s_axi_rdata_reg_reg[29] Q
load net s_axi_rdata_reg[2] -attr @rip(#000000) 0 -pin irq_ctrl Q[0] -pin s_axi_rdata_reg_reg[2] Q
load net s_axi_rdata_reg[30] -attr @rip(#000000) 24 -pin dma_bridge s_axi_rdata[31][24] -pin s_axi_rdata_reg_reg[30] Q
load net s_axi_rdata_reg[31] -attr @rip(#000000) 25 -pin dma_bridge s_axi_rdata[31][25] -pin s_axi_rdata_reg_reg[31] Q
load net s_axi_rdata_reg[31]_i_1_n_0 -pin s_axi_rdata_reg[31]_i_1 O -pin s_axi_rdata_reg_reg[0] CE -pin s_axi_rdata_reg_reg[10] CE -pin s_axi_rdata_reg_reg[11] CE -pin s_axi_rdata_reg_reg[12] CE -pin s_axi_rdata_reg_reg[13] CE -pin s_axi_rdata_reg_reg[14] CE -pin s_axi_rdata_reg_reg[15] CE -pin s_axi_rdata_reg_reg[16] CE -pin s_axi_rdata_reg_reg[17] CE -pin s_axi_rdata_reg_reg[18] CE -pin s_axi_rdata_reg_reg[19] CE -pin s_axi_rdata_reg_reg[1] CE -pin s_axi_rdata_reg_reg[20] CE -pin s_axi_rdata_reg_reg[21] CE -pin s_axi_rdata_reg_reg[22] CE -pin s_axi_rdata_reg_reg[23] CE -pin s_axi_rdata_reg_reg[24] CE -pin s_axi_rdata_reg_reg[25] CE -pin s_axi_rdata_reg_reg[26] CE -pin s_axi_rdata_reg_reg[27] CE -pin s_axi_rdata_reg_reg[28] CE -pin s_axi_rdata_reg_reg[29] CE -pin s_axi_rdata_reg_reg[2] CE -pin s_axi_rdata_reg_reg[30] CE -pin s_axi_rdata_reg_reg[31] CE -pin s_axi_rdata_reg_reg[3] CE -pin s_axi_rdata_reg_reg[4] CE -pin s_axi_rdata_reg_reg[5] CE -pin s_axi_rdata_reg_reg[6] CE -pin s_axi_rdata_reg_reg[7] CE -pin s_axi_rdata_reg_reg[8] CE -pin s_axi_rdata_reg_reg[9] CE
netloc s_axi_rdata_reg[31]_i_1_n_0 1 5 2 2810 55580 3470
load net s_axi_rdata_reg[3] -attr @rip(#000000) 1 -pin irq_ctrl Q[1] -pin s_axi_rdata_reg_reg[3] Q
load net s_axi_rdata_reg[4] -attr @rip(#000000) 2 -pin irq_ctrl Q[2] -pin s_axi_rdata_reg_reg[4] Q
load net s_axi_rdata_reg[5] -attr @rip(#000000) 3 -pin irq_ctrl Q[3] -pin s_axi_rdata_reg_reg[5] Q
load net s_axi_rdata_reg[6] -attr @rip(#000000) 4 -pin irq_ctrl Q[4] -pin s_axi_rdata_reg_reg[6] Q
load net s_axi_rdata_reg[7] -attr @rip(#000000) 5 -pin irq_ctrl Q[5] -pin s_axi_rdata_reg_reg[7] Q
load net s_axi_rdata_reg[8] -attr @rip(#000000) 2 -pin dma_bridge s_axi_rdata[31][2] -pin s_axi_rdata_reg_reg[8] Q
load net s_axi_rdata_reg[9] -attr @rip(#000000) 3 -pin dma_bridge s_axi_rdata[31][3] -pin s_axi_rdata_reg_reg[9] Q
load net s_axi_rready -port s_axi_rready -pin s_axi_rready_IBUF_inst I
netloc s_axi_rready 1 0 11 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ 75750 NJ
load net s_axi_rready_IBUF -pin s_axi_rready_IBUF_inst O -pin s_axi_rvalid_OBUF_inst_i_1 I3 -pin s_axi_rvalid_reg_i_1 I1
netloc s_axi_rready_IBUF 1 11 3 7100 61570 NJ 61570 NJ
load net s_axi_rresp[0] -attr @rip(#000000) 0 -port s_axi_rresp[0] -pin s_axi_rresp_OBUF[0]_inst O
load net s_axi_rresp[1] -attr @rip(#000000) 1 -port s_axi_rresp[1] -pin s_axi_rresp_OBUF[1]_inst O
load net s_axi_rresp_OBUF[0] -pin s_axi_rresp_OBUF[0]_inst I -pin s_axi_rresp_OBUF[1]_inst I -pin s_axi_rresp_OBUF[1]_inst_i_1 O
netloc s_axi_rresp_OBUF[0] 1 14 1 8500 51750n
load net s_axi_rvalid -port s_axi_rvalid -pin s_axi_rvalid_OBUF_inst O
netloc s_axi_rvalid 1 15 1 NJ 61550
load net s_axi_rvalid_OBUF -pin s_axi_rvalid_OBUF_inst I -pin s_axi_rvalid_OBUF_inst_i_1 O
netloc s_axi_rvalid_OBUF 1 14 1 NJ 61550
load net s_axi_rvalid_reg -pin s_axi_rvalid_OBUF_inst_i_1 I4 -pin s_axi_rvalid_reg_i_1 I0 -pin s_axi_rvalid_reg_reg Q
netloc s_axi_rvalid_reg 1 11 3 7160 61530 NJ 61530 7870
load net s_axi_rvalid_reg_i_1_n_0 -pin s_axi_rvalid_reg_i_1 O -pin s_axi_rvalid_reg_reg D
netloc s_axi_rvalid_reg_i_1_n_0 1 12 1 N 61430
load net s_axi_wdata[0] -attr @rip(#000000) s_axi_wdata[0] -port s_axi_wdata[0] -pin s_axi_wdata_IBUF[0]_inst I
load net s_axi_wdata[10] -attr @rip(#000000) s_axi_wdata[10] -port s_axi_wdata[10] -pin s_axi_wdata_IBUF[10]_inst I
load net s_axi_wdata[11] -attr @rip(#000000) s_axi_wdata[11] -port s_axi_wdata[11] -pin s_axi_wdata_IBUF[11]_inst I
load net s_axi_wdata[12] -attr @rip(#000000) s_axi_wdata[12] -port s_axi_wdata[12] -pin s_axi_wdata_IBUF[12]_inst I
load net s_axi_wdata[13] -attr @rip(#000000) s_axi_wdata[13] -port s_axi_wdata[13] -pin s_axi_wdata_IBUF[13]_inst I
load net s_axi_wdata[14] -attr @rip(#000000) s_axi_wdata[14] -port s_axi_wdata[14] -pin s_axi_wdata_IBUF[14]_inst I
load net s_axi_wdata[15] -attr @rip(#000000) s_axi_wdata[15] -port s_axi_wdata[15] -pin s_axi_wdata_IBUF[15]_inst I
load net s_axi_wdata[16] -attr @rip(#000000) s_axi_wdata[16] -port s_axi_wdata[16] -pin s_axi_wdata_IBUF[16]_inst I
load net s_axi_wdata[17] -attr @rip(#000000) s_axi_wdata[17] -port s_axi_wdata[17] -pin s_axi_wdata_IBUF[17]_inst I
load net s_axi_wdata[18] -attr @rip(#000000) s_axi_wdata[18] -port s_axi_wdata[18] -pin s_axi_wdata_IBUF[18]_inst I
load net s_axi_wdata[19] -attr @rip(#000000) s_axi_wdata[19] -port s_axi_wdata[19] -pin s_axi_wdata_IBUF[19]_inst I
load net s_axi_wdata[1] -attr @rip(#000000) s_axi_wdata[1] -port s_axi_wdata[1] -pin s_axi_wdata_IBUF[1]_inst I
load net s_axi_wdata[20] -attr @rip(#000000) s_axi_wdata[20] -port s_axi_wdata[20] -pin s_axi_wdata_IBUF[20]_inst I
load net s_axi_wdata[21] -attr @rip(#000000) s_axi_wdata[21] -port s_axi_wdata[21] -pin s_axi_wdata_IBUF[21]_inst I
load net s_axi_wdata[22] -attr @rip(#000000) s_axi_wdata[22] -port s_axi_wdata[22] -pin s_axi_wdata_IBUF[22]_inst I
load net s_axi_wdata[23] -attr @rip(#000000) s_axi_wdata[23] -port s_axi_wdata[23] -pin s_axi_wdata_IBUF[23]_inst I
load net s_axi_wdata[24] -attr @rip(#000000) s_axi_wdata[24] -port s_axi_wdata[24] -pin s_axi_wdata_IBUF[24]_inst I
load net s_axi_wdata[25] -attr @rip(#000000) s_axi_wdata[25] -port s_axi_wdata[25] -pin s_axi_wdata_IBUF[25]_inst I
load net s_axi_wdata[26] -attr @rip(#000000) s_axi_wdata[26] -port s_axi_wdata[26] -pin s_axi_wdata_IBUF[26]_inst I
load net s_axi_wdata[27] -attr @rip(#000000) s_axi_wdata[27] -port s_axi_wdata[27] -pin s_axi_wdata_IBUF[27]_inst I
load net s_axi_wdata[28] -attr @rip(#000000) s_axi_wdata[28] -port s_axi_wdata[28] -pin s_axi_wdata_IBUF[28]_inst I
load net s_axi_wdata[29] -attr @rip(#000000) s_axi_wdata[29] -port s_axi_wdata[29] -pin s_axi_wdata_IBUF[29]_inst I
load net s_axi_wdata[2] -attr @rip(#000000) s_axi_wdata[2] -port s_axi_wdata[2] -pin s_axi_wdata_IBUF[2]_inst I
load net s_axi_wdata[30] -attr @rip(#000000) s_axi_wdata[30] -port s_axi_wdata[30] -pin s_axi_wdata_IBUF[30]_inst I
load net s_axi_wdata[31] -attr @rip(#000000) s_axi_wdata[31] -port s_axi_wdata[31] -pin s_axi_wdata_IBUF[31]_inst I
load net s_axi_wdata[3] -attr @rip(#000000) s_axi_wdata[3] -port s_axi_wdata[3] -pin s_axi_wdata_IBUF[3]_inst I
load net s_axi_wdata[4] -attr @rip(#000000) s_axi_wdata[4] -port s_axi_wdata[4] -pin s_axi_wdata_IBUF[4]_inst I
load net s_axi_wdata[5] -attr @rip(#000000) s_axi_wdata[5] -port s_axi_wdata[5] -pin s_axi_wdata_IBUF[5]_inst I
load net s_axi_wdata[6] -attr @rip(#000000) s_axi_wdata[6] -port s_axi_wdata[6] -pin s_axi_wdata_IBUF[6]_inst I
load net s_axi_wdata[7] -attr @rip(#000000) s_axi_wdata[7] -port s_axi_wdata[7] -pin s_axi_wdata_IBUF[7]_inst I
load net s_axi_wdata[8] -attr @rip(#000000) s_axi_wdata[8] -port s_axi_wdata[8] -pin s_axi_wdata_IBUF[8]_inst I
load net s_axi_wdata[9] -attr @rip(#000000) s_axi_wdata[9] -port s_axi_wdata[9] -pin s_axi_wdata_IBUF[9]_inst I
load net s_axi_wdata_IBUF[0] -attr @rip(#000000) 0 -pin dma_bridge s_axi_wdata_IBUF[0] -pin irq_ctrl D[0] -pin reg_file_reg[0][0] D -pin reg_file_reg[10][0] D -pin reg_file_reg[11][0] D -pin reg_file_reg[12][0] D -pin reg_file_reg[13][0] D -pin reg_file_reg[14][0] D -pin reg_file_reg[15][0] D -pin reg_file_reg[1][0] D -pin reg_file_reg[2][0] D -pin reg_file_reg[3][0] D -pin reg_file_reg[4][0] D -pin reg_file_reg[5][0] D -pin reg_file_reg[6][0] D -pin reg_file_reg[7][0] D -pin reg_file_reg[8][0] D -pin reg_file_reg[9][0] D -pin s_axi_wdata_IBUF[0]_inst O
load net s_axi_wdata_IBUF[10] -attr @rip(#000000) 10 -pin dma_bridge s_axi_wdata_IBUF[10] -pin reg_file_reg[0][10] D -pin reg_file_reg[10][10] D -pin reg_file_reg[11][10] D -pin reg_file_reg[12][10] D -pin reg_file_reg[13][10] D -pin reg_file_reg[14][10] D -pin reg_file_reg[15][10] D -pin reg_file_reg[1][10] D -pin reg_file_reg[2][10] D -pin reg_file_reg[3][10] D -pin reg_file_reg[4][10] D -pin reg_file_reg[5][10] D -pin reg_file_reg[6][10] D -pin reg_file_reg[7][10] D -pin reg_file_reg[8][10] D -pin reg_file_reg[9][10] D -pin s_axi_wdata_IBUF[10]_inst O
load net s_axi_wdata_IBUF[11] -attr @rip(#000000) 11 -pin dma_bridge s_axi_wdata_IBUF[11] -pin reg_file_reg[0][11] D -pin reg_file_reg[10][11] D -pin reg_file_reg[11][11] D -pin reg_file_reg[12][11] D -pin reg_file_reg[13][11] D -pin reg_file_reg[14][11] D -pin reg_file_reg[15][11] D -pin reg_file_reg[1][11] D -pin reg_file_reg[2][11] D -pin reg_file_reg[3][11] D -pin reg_file_reg[4][11] D -pin reg_file_reg[5][11] D -pin reg_file_reg[6][11] D -pin reg_file_reg[7][11] D -pin reg_file_reg[8][11] D -pin reg_file_reg[9][11] D -pin s_axi_wdata_IBUF[11]_inst O
load net s_axi_wdata_IBUF[12] -attr @rip(#000000) 12 -pin dma_bridge s_axi_wdata_IBUF[12] -pin reg_file_reg[0][12] D -pin reg_file_reg[10][12] D -pin reg_file_reg[11][12] D -pin reg_file_reg[12][12] D -pin reg_file_reg[13][12] D -pin reg_file_reg[14][12] D -pin reg_file_reg[15][12] D -pin reg_file_reg[1][12] D -pin reg_file_reg[2][12] D -pin reg_file_reg[3][12] D -pin reg_file_reg[4][12] D -pin reg_file_reg[5][12] D -pin reg_file_reg[6][12] D -pin reg_file_reg[7][12] D -pin reg_file_reg[8][12] D -pin reg_file_reg[9][12] D -pin s_axi_wdata_IBUF[12]_inst O
load net s_axi_wdata_IBUF[13] -attr @rip(#000000) 13 -pin dma_bridge s_axi_wdata_IBUF[13] -pin reg_file_reg[0][13] D -pin reg_file_reg[10][13] D -pin reg_file_reg[11][13] D -pin reg_file_reg[12][13] D -pin reg_file_reg[13][13] D -pin reg_file_reg[14][13] D -pin reg_file_reg[15][13] D -pin reg_file_reg[1][13] D -pin reg_file_reg[2][13] D -pin reg_file_reg[3][13] D -pin reg_file_reg[4][13] D -pin reg_file_reg[5][13] D -pin reg_file_reg[6][13] D -pin reg_file_reg[7][13] D -pin reg_file_reg[8][13] D -pin reg_file_reg[9][13] D -pin s_axi_wdata_IBUF[13]_inst O
load net s_axi_wdata_IBUF[14] -attr @rip(#000000) 14 -pin dma_bridge s_axi_wdata_IBUF[14] -pin reg_file_reg[0][14] D -pin reg_file_reg[10][14] D -pin reg_file_reg[11][14] D -pin reg_file_reg[12][14] D -pin reg_file_reg[13][14] D -pin reg_file_reg[14][14] D -pin reg_file_reg[15][14] D -pin reg_file_reg[1][14] D -pin reg_file_reg[2][14] D -pin reg_file_reg[3][14] D -pin reg_file_reg[4][14] D -pin reg_file_reg[5][14] D -pin reg_file_reg[6][14] D -pin reg_file_reg[7][14] D -pin reg_file_reg[8][14] D -pin reg_file_reg[9][14] D -pin s_axi_wdata_IBUF[14]_inst O
load net s_axi_wdata_IBUF[15] -attr @rip(#000000) 15 -pin dma_bridge s_axi_wdata_IBUF[15] -pin reg_file_reg[0][15] D -pin reg_file_reg[10][15] D -pin reg_file_reg[11][15] D -pin reg_file_reg[12][15] D -pin reg_file_reg[13][15] D -pin reg_file_reg[14][15] D -pin reg_file_reg[15][15] D -pin reg_file_reg[1][15] D -pin reg_file_reg[2][15] D -pin reg_file_reg[3][15] D -pin reg_file_reg[4][15] D -pin reg_file_reg[5][15] D -pin reg_file_reg[6][15] D -pin reg_file_reg[7][15] D -pin reg_file_reg[8][15] D -pin reg_file_reg[9][15] D -pin s_axi_wdata_IBUF[15]_inst O
load net s_axi_wdata_IBUF[16] -attr @rip(#000000) 16 -pin dma_bridge s_axi_wdata_IBUF[16] -pin reg_file_reg[0][16] D -pin reg_file_reg[10][16] D -pin reg_file_reg[11][16] D -pin reg_file_reg[12][16] D -pin reg_file_reg[13][16] D -pin reg_file_reg[14][16] D -pin reg_file_reg[15][16] D -pin reg_file_reg[1][16] D -pin reg_file_reg[2][16] D -pin reg_file_reg[3][16] D -pin reg_file_reg[4][16] D -pin reg_file_reg[5][16] D -pin reg_file_reg[6][16] D -pin reg_file_reg[7][16] D -pin reg_file_reg[8][16] D -pin reg_file_reg[9][16] D -pin s_axi_wdata_IBUF[16]_inst O
load net s_axi_wdata_IBUF[17] -attr @rip(#000000) 17 -pin dma_bridge s_axi_wdata_IBUF[17] -pin reg_file_reg[0][17] D -pin reg_file_reg[10][17] D -pin reg_file_reg[11][17] D -pin reg_file_reg[12][17] D -pin reg_file_reg[13][17] D -pin reg_file_reg[14][17] D -pin reg_file_reg[15][17] D -pin reg_file_reg[1][17] D -pin reg_file_reg[2][17] D -pin reg_file_reg[3][17] D -pin reg_file_reg[4][17] D -pin reg_file_reg[5][17] D -pin reg_file_reg[6][17] D -pin reg_file_reg[7][17] D -pin reg_file_reg[8][17] D -pin reg_file_reg[9][17] D -pin s_axi_wdata_IBUF[17]_inst O
load net s_axi_wdata_IBUF[18] -attr @rip(#000000) 18 -pin dma_bridge s_axi_wdata_IBUF[18] -pin reg_file_reg[0][18] D -pin reg_file_reg[10][18] D -pin reg_file_reg[11][18] D -pin reg_file_reg[12][18] D -pin reg_file_reg[13][18] D -pin reg_file_reg[14][18] D -pin reg_file_reg[15][18] D -pin reg_file_reg[1][18] D -pin reg_file_reg[2][18] D -pin reg_file_reg[3][18] D -pin reg_file_reg[4][18] D -pin reg_file_reg[5][18] D -pin reg_file_reg[6][18] D -pin reg_file_reg[7][18] D -pin reg_file_reg[8][18] D -pin reg_file_reg[9][18] D -pin s_axi_wdata_IBUF[18]_inst O
load net s_axi_wdata_IBUF[19] -attr @rip(#000000) 19 -pin dma_bridge s_axi_wdata_IBUF[19] -pin reg_file_reg[0][19] D -pin reg_file_reg[10][19] D -pin reg_file_reg[11][19] D -pin reg_file_reg[12][19] D -pin reg_file_reg[13][19] D -pin reg_file_reg[14][19] D -pin reg_file_reg[15][19] D -pin reg_file_reg[1][19] D -pin reg_file_reg[2][19] D -pin reg_file_reg[3][19] D -pin reg_file_reg[4][19] D -pin reg_file_reg[5][19] D -pin reg_file_reg[6][19] D -pin reg_file_reg[7][19] D -pin reg_file_reg[8][19] D -pin reg_file_reg[9][19] D -pin s_axi_wdata_IBUF[19]_inst O
load net s_axi_wdata_IBUF[1] -attr @rip(#000000) 1 -pin dma_bridge s_axi_wdata_IBUF[1] -pin irq_ctrl D[1] -pin reg_file_reg[0][1] D -pin reg_file_reg[10][1] D -pin reg_file_reg[11][1] D -pin reg_file_reg[12][1] D -pin reg_file_reg[13][1] D -pin reg_file_reg[14][1] D -pin reg_file_reg[15][1] D -pin reg_file_reg[1][1] D -pin reg_file_reg[2][1] D -pin reg_file_reg[3][1] D -pin reg_file_reg[4][1] D -pin reg_file_reg[5][1] D -pin reg_file_reg[6][1] D -pin reg_file_reg[7][1] D -pin reg_file_reg[8][1] D -pin reg_file_reg[9][1] D -pin s_axi_wdata_IBUF[1]_inst O
load net s_axi_wdata_IBUF[20] -attr @rip(#000000) 20 -pin dma_bridge s_axi_wdata_IBUF[20] -pin reg_file_reg[0][20] D -pin reg_file_reg[10][20] D -pin reg_file_reg[11][20] D -pin reg_file_reg[12][20] D -pin reg_file_reg[13][20] D -pin reg_file_reg[14][20] D -pin reg_file_reg[15][20] D -pin reg_file_reg[1][20] D -pin reg_file_reg[2][20] D -pin reg_file_reg[3][20] D -pin reg_file_reg[4][20] D -pin reg_file_reg[5][20] D -pin reg_file_reg[6][20] D -pin reg_file_reg[7][20] D -pin reg_file_reg[8][20] D -pin reg_file_reg[9][20] D -pin s_axi_wdata_IBUF[20]_inst O
load net s_axi_wdata_IBUF[21] -attr @rip(#000000) 21 -pin dma_bridge s_axi_wdata_IBUF[21] -pin reg_file_reg[0][21] D -pin reg_file_reg[10][21] D -pin reg_file_reg[11][21] D -pin reg_file_reg[12][21] D -pin reg_file_reg[13][21] D -pin reg_file_reg[14][21] D -pin reg_file_reg[15][21] D -pin reg_file_reg[1][21] D -pin reg_file_reg[2][21] D -pin reg_file_reg[3][21] D -pin reg_file_reg[4][21] D -pin reg_file_reg[5][21] D -pin reg_file_reg[6][21] D -pin reg_file_reg[7][21] D -pin reg_file_reg[8][21] D -pin reg_file_reg[9][21] D -pin s_axi_wdata_IBUF[21]_inst O
load net s_axi_wdata_IBUF[22] -attr @rip(#000000) 22 -pin dma_bridge s_axi_wdata_IBUF[22] -pin reg_file_reg[0][22] D -pin reg_file_reg[10][22] D -pin reg_file_reg[11][22] D -pin reg_file_reg[12][22] D -pin reg_file_reg[13][22] D -pin reg_file_reg[14][22] D -pin reg_file_reg[15][22] D -pin reg_file_reg[1][22] D -pin reg_file_reg[2][22] D -pin reg_file_reg[3][22] D -pin reg_file_reg[4][22] D -pin reg_file_reg[5][22] D -pin reg_file_reg[6][22] D -pin reg_file_reg[7][22] D -pin reg_file_reg[8][22] D -pin reg_file_reg[9][22] D -pin s_axi_wdata_IBUF[22]_inst O
load net s_axi_wdata_IBUF[23] -attr @rip(#000000) 23 -pin dma_bridge s_axi_wdata_IBUF[23] -pin reg_file_reg[0][23] D -pin reg_file_reg[10][23] D -pin reg_file_reg[11][23] D -pin reg_file_reg[12][23] D -pin reg_file_reg[13][23] D -pin reg_file_reg[14][23] D -pin reg_file_reg[15][23] D -pin reg_file_reg[1][23] D -pin reg_file_reg[2][23] D -pin reg_file_reg[3][23] D -pin reg_file_reg[4][23] D -pin reg_file_reg[5][23] D -pin reg_file_reg[6][23] D -pin reg_file_reg[7][23] D -pin reg_file_reg[8][23] D -pin reg_file_reg[9][23] D -pin s_axi_wdata_IBUF[23]_inst O
load net s_axi_wdata_IBUF[24] -attr @rip(#000000) 24 -pin dma_bridge s_axi_wdata_IBUF[24] -pin reg_file_reg[0][24] D -pin reg_file_reg[10][24] D -pin reg_file_reg[11][24] D -pin reg_file_reg[12][24] D -pin reg_file_reg[13][24] D -pin reg_file_reg[14][24] D -pin reg_file_reg[15][24] D -pin reg_file_reg[1][24] D -pin reg_file_reg[2][24] D -pin reg_file_reg[3][24] D -pin reg_file_reg[4][24] D -pin reg_file_reg[5][24] D -pin reg_file_reg[6][24] D -pin reg_file_reg[7][24] D -pin reg_file_reg[8][24] D -pin reg_file_reg[9][24] D -pin s_axi_wdata_IBUF[24]_inst O
load net s_axi_wdata_IBUF[25] -attr @rip(#000000) 25 -pin dma_bridge s_axi_wdata_IBUF[25] -pin reg_file_reg[0][25] D -pin reg_file_reg[10][25] D -pin reg_file_reg[11][25] D -pin reg_file_reg[12][25] D -pin reg_file_reg[13][25] D -pin reg_file_reg[14][25] D -pin reg_file_reg[15][25] D -pin reg_file_reg[1][25] D -pin reg_file_reg[2][25] D -pin reg_file_reg[3][25] D -pin reg_file_reg[4][25] D -pin reg_file_reg[5][25] D -pin reg_file_reg[6][25] D -pin reg_file_reg[7][25] D -pin reg_file_reg[8][25] D -pin reg_file_reg[9][25] D -pin s_axi_wdata_IBUF[25]_inst O
load net s_axi_wdata_IBUF[26] -attr @rip(#000000) 26 -pin dma_bridge s_axi_wdata_IBUF[26] -pin reg_file_reg[0][26] D -pin reg_file_reg[10][26] D -pin reg_file_reg[11][26] D -pin reg_file_reg[12][26] D -pin reg_file_reg[13][26] D -pin reg_file_reg[14][26] D -pin reg_file_reg[15][26] D -pin reg_file_reg[1][26] D -pin reg_file_reg[2][26] D -pin reg_file_reg[3][26] D -pin reg_file_reg[4][26] D -pin reg_file_reg[5][26] D -pin reg_file_reg[6][26] D -pin reg_file_reg[7][26] D -pin reg_file_reg[8][26] D -pin reg_file_reg[9][26] D -pin s_axi_wdata_IBUF[26]_inst O
load net s_axi_wdata_IBUF[27] -attr @rip(#000000) 27 -pin dma_bridge s_axi_wdata_IBUF[27] -pin reg_file_reg[0][27] D -pin reg_file_reg[10][27] D -pin reg_file_reg[11][27] D -pin reg_file_reg[12][27] D -pin reg_file_reg[13][27] D -pin reg_file_reg[14][27] D -pin reg_file_reg[15][27] D -pin reg_file_reg[1][27] D -pin reg_file_reg[2][27] D -pin reg_file_reg[3][27] D -pin reg_file_reg[4][27] D -pin reg_file_reg[5][27] D -pin reg_file_reg[6][27] D -pin reg_file_reg[7][27] D -pin reg_file_reg[8][27] D -pin reg_file_reg[9][27] D -pin s_axi_wdata_IBUF[27]_inst O
load net s_axi_wdata_IBUF[28] -attr @rip(#000000) 28 -pin dma_bridge s_axi_wdata_IBUF[28] -pin reg_file_reg[0][28] D -pin reg_file_reg[10][28] D -pin reg_file_reg[11][28] D -pin reg_file_reg[12][28] D -pin reg_file_reg[13][28] D -pin reg_file_reg[14][28] D -pin reg_file_reg[15][28] D -pin reg_file_reg[1][28] D -pin reg_file_reg[2][28] D -pin reg_file_reg[3][28] D -pin reg_file_reg[4][28] D -pin reg_file_reg[5][28] D -pin reg_file_reg[6][28] D -pin reg_file_reg[7][28] D -pin reg_file_reg[8][28] D -pin reg_file_reg[9][28] D -pin s_axi_wdata_IBUF[28]_inst O
load net s_axi_wdata_IBUF[29] -attr @rip(#000000) 29 -pin dma_bridge s_axi_wdata_IBUF[29] -pin reg_file_reg[0][29] D -pin reg_file_reg[10][29] D -pin reg_file_reg[11][29] D -pin reg_file_reg[12][29] D -pin reg_file_reg[13][29] D -pin reg_file_reg[14][29] D -pin reg_file_reg[15][29] D -pin reg_file_reg[1][29] D -pin reg_file_reg[2][29] D -pin reg_file_reg[3][29] D -pin reg_file_reg[4][29] D -pin reg_file_reg[5][29] D -pin reg_file_reg[6][29] D -pin reg_file_reg[7][29] D -pin reg_file_reg[8][29] D -pin reg_file_reg[9][29] D -pin s_axi_wdata_IBUF[29]_inst O
load net s_axi_wdata_IBUF[2] -attr @rip(#000000) 2 -pin dma_bridge s_axi_wdata_IBUF[2] -pin irq_ctrl D[2] -pin reg_file_reg[0][2] D -pin reg_file_reg[10][2] D -pin reg_file_reg[11][2] D -pin reg_file_reg[12][2] D -pin reg_file_reg[13][2] D -pin reg_file_reg[14][2] D -pin reg_file_reg[15][2] D -pin reg_file_reg[1][2] D -pin reg_file_reg[2][2] D -pin reg_file_reg[3][2] D -pin reg_file_reg[4][2] D -pin reg_file_reg[5][2] D -pin reg_file_reg[6][2] D -pin reg_file_reg[7][2] D -pin reg_file_reg[8][2] D -pin reg_file_reg[9][2] D -pin s_axi_wdata_IBUF[2]_inst O
load net s_axi_wdata_IBUF[30] -attr @rip(#000000) 30 -pin dma_bridge s_axi_wdata_IBUF[30] -pin reg_file_reg[0][30] D -pin reg_file_reg[10][30] D -pin reg_file_reg[11][30] D -pin reg_file_reg[12][30] D -pin reg_file_reg[13][30] D -pin reg_file_reg[14][30] D -pin reg_file_reg[15][30] D -pin reg_file_reg[1][30] D -pin reg_file_reg[2][30] D -pin reg_file_reg[3][30] D -pin reg_file_reg[4][30] D -pin reg_file_reg[5][30] D -pin reg_file_reg[6][30] D -pin reg_file_reg[7][30] D -pin reg_file_reg[8][30] D -pin reg_file_reg[9][30] D -pin s_axi_wdata_IBUF[30]_inst O
load net s_axi_wdata_IBUF[31] -attr @rip(#000000) 31 -pin dma_bridge s_axi_wdata_IBUF[31] -pin reg_file_reg[0][31] D -pin reg_file_reg[10][31] D -pin reg_file_reg[11][31] D -pin reg_file_reg[12][31] D -pin reg_file_reg[13][31] D -pin reg_file_reg[14][31] D -pin reg_file_reg[15][31] D -pin reg_file_reg[1][31] D -pin reg_file_reg[2][31] D -pin reg_file_reg[3][31] D -pin reg_file_reg[4][31] D -pin reg_file_reg[5][31] D -pin reg_file_reg[6][31] D -pin reg_file_reg[7][31] D -pin reg_file_reg[8][31] D -pin reg_file_reg[9][31] D -pin s_axi_wdata_IBUF[31]_inst O
load net s_axi_wdata_IBUF[3] -attr @rip(#000000) 3 -pin dma_bridge s_axi_wdata_IBUF[3] -pin irq_ctrl D[3] -pin reg_file_reg[0][3] D -pin reg_file_reg[10][3] D -pin reg_file_reg[11][3] D -pin reg_file_reg[12][3] D -pin reg_file_reg[13][3] D -pin reg_file_reg[14][3] D -pin reg_file_reg[15][3] D -pin reg_file_reg[1][3] D -pin reg_file_reg[2][3] D -pin reg_file_reg[3][3] D -pin reg_file_reg[4][3] D -pin reg_file_reg[5][3] D -pin reg_file_reg[6][3] D -pin reg_file_reg[7][3] D -pin reg_file_reg[8][3] D -pin reg_file_reg[9][3] D -pin s_axi_wdata_IBUF[3]_inst O
load net s_axi_wdata_IBUF[4] -attr @rip(#000000) 4 -pin dma_bridge s_axi_wdata_IBUF[4] -pin irq_ctrl D[4] -pin reg_file_reg[0][4] D -pin reg_file_reg[10][4] D -pin reg_file_reg[11][4] D -pin reg_file_reg[12][4] D -pin reg_file_reg[13][4] D -pin reg_file_reg[14][4] D -pin reg_file_reg[15][4] D -pin reg_file_reg[1][4] D -pin reg_file_reg[2][4] D -pin reg_file_reg[3][4] D -pin reg_file_reg[4][4] D -pin reg_file_reg[5][4] D -pin reg_file_reg[6][4] D -pin reg_file_reg[7][4] D -pin reg_file_reg[8][4] D -pin reg_file_reg[9][4] D -pin s_axi_wdata_IBUF[4]_inst O
load net s_axi_wdata_IBUF[5] -attr @rip(#000000) 5 -pin dma_bridge s_axi_wdata_IBUF[5] -pin irq_ctrl D[5] -pin reg_file_reg[0][5] D -pin reg_file_reg[10][5] D -pin reg_file_reg[11][5] D -pin reg_file_reg[12][5] D -pin reg_file_reg[13][5] D -pin reg_file_reg[14][5] D -pin reg_file_reg[15][5] D -pin reg_file_reg[1][5] D -pin reg_file_reg[2][5] D -pin reg_file_reg[3][5] D -pin reg_file_reg[4][5] D -pin reg_file_reg[5][5] D -pin reg_file_reg[6][5] D -pin reg_file_reg[7][5] D -pin reg_file_reg[8][5] D -pin reg_file_reg[9][5] D -pin s_axi_wdata_IBUF[5]_inst O
load net s_axi_wdata_IBUF[6] -attr @rip(#000000) 6 -pin dma_bridge s_axi_wdata_IBUF[6] -pin irq_ctrl D[6] -pin reg_file_reg[0][6] D -pin reg_file_reg[10][6] D -pin reg_file_reg[11][6] D -pin reg_file_reg[12][6] D -pin reg_file_reg[13][6] D -pin reg_file_reg[14][6] D -pin reg_file_reg[15][6] D -pin reg_file_reg[1][6] D -pin reg_file_reg[2][6] D -pin reg_file_reg[3][6] D -pin reg_file_reg[4][6] D -pin reg_file_reg[5][6] D -pin reg_file_reg[6][6] D -pin reg_file_reg[7][6] D -pin reg_file_reg[8][6] D -pin reg_file_reg[9][6] D -pin s_axi_wdata_IBUF[6]_inst O
load net s_axi_wdata_IBUF[7] -attr @rip(#000000) 7 -pin dma_bridge s_axi_wdata_IBUF[7] -pin irq_ctrl D[7] -pin reg_file_reg[0][7] D -pin reg_file_reg[10][7] D -pin reg_file_reg[11][7] D -pin reg_file_reg[12][7] D -pin reg_file_reg[13][7] D -pin reg_file_reg[14][7] D -pin reg_file_reg[15][7] D -pin reg_file_reg[1][7] D -pin reg_file_reg[2][7] D -pin reg_file_reg[3][7] D -pin reg_file_reg[4][7] D -pin reg_file_reg[5][7] D -pin reg_file_reg[6][7] D -pin reg_file_reg[7][7] D -pin reg_file_reg[8][7] D -pin reg_file_reg[9][7] D -pin s_axi_wdata_IBUF[7]_inst O
load net s_axi_wdata_IBUF[8] -attr @rip(#000000) 8 -pin dma_bridge s_axi_wdata_IBUF[8] -pin reg_file_reg[0][8] D -pin reg_file_reg[10][8] D -pin reg_file_reg[11][8] D -pin reg_file_reg[12][8] D -pin reg_file_reg[13][8] D -pin reg_file_reg[14][8] D -pin reg_file_reg[15][8] D -pin reg_file_reg[1][8] D -pin reg_file_reg[2][8] D -pin reg_file_reg[3][8] D -pin reg_file_reg[4][8] D -pin reg_file_reg[5][8] D -pin reg_file_reg[6][8] D -pin reg_file_reg[7][8] D -pin reg_file_reg[8][8] D -pin reg_file_reg[9][8] D -pin s_axi_wdata_IBUF[8]_inst O
load net s_axi_wdata_IBUF[9] -attr @rip(#000000) 9 -pin dma_bridge s_axi_wdata_IBUF[9] -pin reg_file_reg[0][9] D -pin reg_file_reg[10][9] D -pin reg_file_reg[11][9] D -pin reg_file_reg[12][9] D -pin reg_file_reg[13][9] D -pin reg_file_reg[14][9] D -pin reg_file_reg[15][9] D -pin reg_file_reg[1][9] D -pin reg_file_reg[2][9] D -pin reg_file_reg[3][9] D -pin reg_file_reg[4][9] D -pin reg_file_reg[5][9] D -pin reg_file_reg[6][9] D -pin reg_file_reg[7][9] D -pin reg_file_reg[8][9] D -pin reg_file_reg[9][9] D -pin s_axi_wdata_IBUF[9]_inst O
load net s_axi_wready -port s_axi_wready -pin s_axi_wready_OBUF_inst O
netloc s_axi_wready 1 15 1 NJ 57350
load net s_axi_wready_OBUF -pin s_axi_wready_OBUF_inst I -pin s_axi_wready_OBUF_inst_i_1 O
netloc s_axi_wready_OBUF 1 14 1 NJ 57350
load net s_axi_wready_reg -pin s_axi_awready_reg_i_1 O -pin s_axi_awready_reg_reg CE -pin s_axi_wready_reg_reg CE
netloc s_axi_wready_reg 1 12 1 7460 57160n
load net s_axi_wready_reg_reg_n_0 -pin s_axi_wready_OBUF_inst_i_1 I2 -pin s_axi_wready_reg_reg Q
netloc s_axi_wready_reg_reg_n_0 1 13 1 7870 57330n
load net s_axi_wstrb[0] -attr @rip(#000000) s_axi_wstrb[0] -port s_axi_wstrb[0] -pin s_axi_wstrb_IBUF[0]_inst I
load net s_axi_wstrb[1] -attr @rip(#000000) s_axi_wstrb[1] -port s_axi_wstrb[1] -pin s_axi_wstrb_IBUF[1]_inst I
load net s_axi_wstrb[2] -attr @rip(#000000) s_axi_wstrb[2] -port s_axi_wstrb[2] -pin s_axi_wstrb_IBUF[2]_inst I
load net s_axi_wstrb[3] -attr @rip(#000000) s_axi_wstrb[3] -port s_axi_wstrb[3] -pin s_axi_wstrb_IBUF[3]_inst I
load net s_axi_wstrb_IBUF[0] -attr @rip(#000000) 0 -pin irq_ctrl s_axi_wstrb_IBUF[0] -pin reg_file[0][7]_i_1 I0 -pin reg_file[10][7]_i_1 I0 -pin reg_file[11][7]_i_1 I0 -pin reg_file[12][7]_i_1 I0 -pin reg_file[13][7]_i_1 I0 -pin reg_file[14][7]_i_1 I0 -pin reg_file[15][7]_i_1 I0 -pin reg_file[1][7]_i_1 I0 -pin reg_file[2][7]_i_1 I0 -pin reg_file[3][7]_i_1 I0 -pin reg_file[4][7]_i_1 I0 -pin reg_file[5][7]_i_1 I0 -pin reg_file[6][7]_i_1 I0 -pin reg_file[7][7]_i_1 I0 -pin reg_file[8][7]_i_1 I0 -pin reg_file[9][7]_i_1 I0 -pin s_axi_wstrb_IBUF[0]_inst O
netloc s_axi_wstrb_IBUF[0] 1 2 5 620 56810 NJ 56810 NJ 56810 NJ 56810 3670J
load net s_axi_wstrb_IBUF[1] -pin reg_file[0][15]_i_1 I0 -pin reg_file[10][15]_i_1 I0 -pin reg_file[11][15]_i_1 I0 -pin reg_file[12][15]_i_1 I0 -pin reg_file[13][15]_i_1 I0 -pin reg_file[14][15]_i_1 I0 -pin reg_file[15][15]_i_1 I0 -pin reg_file[1][15]_i_1 I0 -pin reg_file[2][15]_i_1 I0 -pin reg_file[3][15]_i_1 I0 -pin reg_file[4][15]_i_1 I0 -pin reg_file[5][15]_i_1 I0 -pin reg_file[6][15]_i_1 I0 -pin reg_file[7][15]_i_1 I0 -pin reg_file[8][15]_i_1 I0 -pin reg_file[9][15]_i_1 I0 -pin s_axi_wstrb_IBUF[1]_inst O
netloc s_axi_wstrb_IBUF[1] 1 2 1 640 6230n
load net s_axi_wstrb_IBUF[2] -pin reg_file[0][23]_i_1 I0 -pin reg_file[10][23]_i_1 I0 -pin reg_file[11][23]_i_1 I0 -pin reg_file[12][23]_i_1 I0 -pin reg_file[13][23]_i_1 I0 -pin reg_file[14][23]_i_1 I0 -pin reg_file[15][23]_i_1 I0 -pin reg_file[1][23]_i_1 I0 -pin reg_file[2][23]_i_1 I0 -pin reg_file[3][23]_i_1 I0 -pin reg_file[4][23]_i_1 I0 -pin reg_file[5][23]_i_1 I0 -pin reg_file[6][23]_i_1 I0 -pin reg_file[7][23]_i_1 I0 -pin reg_file[8][23]_i_1 I0 -pin reg_file[9][23]_i_1 I0 -pin s_axi_wstrb_IBUF[2]_inst O
netloc s_axi_wstrb_IBUF[2] 1 2 1 660 6490n
load net s_axi_wstrb_IBUF[3] -pin reg_file[0][31]_i_1 I0 -pin reg_file[10][31]_i_1 I0 -pin reg_file[11][31]_i_1 I0 -pin reg_file[12][31]_i_1 I0 -pin reg_file[13][31]_i_1 I0 -pin reg_file[14][31]_i_1 I0 -pin reg_file[15][31]_i_1 I0 -pin reg_file[1][31]_i_1 I0 -pin reg_file[2][31]_i_1 I0 -pin reg_file[3][31]_i_1 I0 -pin reg_file[4][31]_i_1 I0 -pin reg_file[5][31]_i_1 I0 -pin reg_file[6][31]_i_1 I0 -pin reg_file[7][31]_i_1 I0 -pin reg_file[8][31]_i_1 I0 -pin reg_file[9][31]_i_1 I0 -pin s_axi_wstrb_IBUF[3]_inst O
netloc s_axi_wstrb_IBUF[3] 1 2 1 780 8730n
load net s_axi_wvalid -port s_axi_wvalid -pin s_axi_wvalid_IBUF_inst I
netloc s_axi_wvalid 1 0 1 NJ 55090
load net s_axi_wvalid_IBUF -pin dma_bridge s_axi_wvalid_IBUF -pin irq_ctrl s_axi_wvalid_IBUF -pin reg_file[0][31]_i_2 I3 -pin reg_file[1][31]_i_2 I3 -pin reg_file[8][31]_i_2 I3 -pin reg_file[9][31]_i_2 I3 -pin s_axi_bvalid_reg_i_1 I5 -pin s_axi_wready_reg_reg D -pin s_axi_wvalid_IBUF_inst O
netloc s_axi_wvalid_IBUF 1 1 12 300 56510 NJ 56510 NJ 56510 NJ 56510 2790J 56220 3530 56270 4470 56480 NJ 56480 NJ 56480 NJ 56480 7120 57130 7520J
load net s_axis_input_tdata[0] -attr @rip(#000000) s_axis_input_tdata[0] -port s_axis_input_tdata[0] -pin s_axis_input_tdata_IBUF[0]_inst I
load net s_axis_input_tdata[10] -attr @rip(#000000) s_axis_input_tdata[10] -port s_axis_input_tdata[10] -pin s_axis_input_tdata_IBUF[10]_inst I
load net s_axis_input_tdata[11] -attr @rip(#000000) s_axis_input_tdata[11] -port s_axis_input_tdata[11] -pin s_axis_input_tdata_IBUF[11]_inst I
load net s_axis_input_tdata[12] -attr @rip(#000000) s_axis_input_tdata[12] -port s_axis_input_tdata[12] -pin s_axis_input_tdata_IBUF[12]_inst I
load net s_axis_input_tdata[13] -attr @rip(#000000) s_axis_input_tdata[13] -port s_axis_input_tdata[13] -pin s_axis_input_tdata_IBUF[13]_inst I
load net s_axis_input_tdata[14] -attr @rip(#000000) s_axis_input_tdata[14] -port s_axis_input_tdata[14] -pin s_axis_input_tdata_IBUF[14]_inst I
load net s_axis_input_tdata[15] -attr @rip(#000000) s_axis_input_tdata[15] -port s_axis_input_tdata[15] -pin s_axis_input_tdata_IBUF[15]_inst I
load net s_axis_input_tdata[16] -attr @rip(#000000) s_axis_input_tdata[16] -port s_axis_input_tdata[16] -pin s_axis_input_tdata_IBUF[16]_inst I
load net s_axis_input_tdata[17] -attr @rip(#000000) s_axis_input_tdata[17] -port s_axis_input_tdata[17] -pin s_axis_input_tdata_IBUF[17]_inst I
load net s_axis_input_tdata[18] -attr @rip(#000000) s_axis_input_tdata[18] -port s_axis_input_tdata[18] -pin s_axis_input_tdata_IBUF[18]_inst I
load net s_axis_input_tdata[19] -attr @rip(#000000) s_axis_input_tdata[19] -port s_axis_input_tdata[19] -pin s_axis_input_tdata_IBUF[19]_inst I
load net s_axis_input_tdata[1] -attr @rip(#000000) s_axis_input_tdata[1] -port s_axis_input_tdata[1] -pin s_axis_input_tdata_IBUF[1]_inst I
load net s_axis_input_tdata[20] -attr @rip(#000000) s_axis_input_tdata[20] -port s_axis_input_tdata[20] -pin s_axis_input_tdata_IBUF[20]_inst I
load net s_axis_input_tdata[21] -attr @rip(#000000) s_axis_input_tdata[21] -port s_axis_input_tdata[21] -pin s_axis_input_tdata_IBUF[21]_inst I
load net s_axis_input_tdata[22] -attr @rip(#000000) s_axis_input_tdata[22] -port s_axis_input_tdata[22] -pin s_axis_input_tdata_IBUF[22]_inst I
load net s_axis_input_tdata[23] -attr @rip(#000000) s_axis_input_tdata[23] -port s_axis_input_tdata[23] -pin s_axis_input_tdata_IBUF[23]_inst I
load net s_axis_input_tdata[2] -attr @rip(#000000) s_axis_input_tdata[2] -port s_axis_input_tdata[2] -pin s_axis_input_tdata_IBUF[2]_inst I
load net s_axis_input_tdata[3] -attr @rip(#000000) s_axis_input_tdata[3] -port s_axis_input_tdata[3] -pin s_axis_input_tdata_IBUF[3]_inst I
load net s_axis_input_tdata[4] -attr @rip(#000000) s_axis_input_tdata[4] -port s_axis_input_tdata[4] -pin s_axis_input_tdata_IBUF[4]_inst I
load net s_axis_input_tdata[5] -attr @rip(#000000) s_axis_input_tdata[5] -port s_axis_input_tdata[5] -pin s_axis_input_tdata_IBUF[5]_inst I
load net s_axis_input_tdata[6] -attr @rip(#000000) s_axis_input_tdata[6] -port s_axis_input_tdata[6] -pin s_axis_input_tdata_IBUF[6]_inst I
load net s_axis_input_tdata[7] -attr @rip(#000000) s_axis_input_tdata[7] -port s_axis_input_tdata[7] -pin s_axis_input_tdata_IBUF[7]_inst I
load net s_axis_input_tdata[8] -attr @rip(#000000) s_axis_input_tdata[8] -port s_axis_input_tdata[8] -pin s_axis_input_tdata_IBUF[8]_inst I
load net s_axis_input_tdata[9] -attr @rip(#000000) s_axis_input_tdata[9] -port s_axis_input_tdata[9] -pin s_axis_input_tdata_IBUF[9]_inst I
load net s_axis_input_tdata_IBUF[0] -attr @rip(#000000) 0 -pin preproc s_axis_input_tdata_IBUF[0] -pin s_axis_input_tdata_IBUF[0]_inst O
load net s_axis_input_tdata_IBUF[10] -attr @rip(#000000) 10 -pin preproc s_axis_input_tdata_IBUF[10] -pin s_axis_input_tdata_IBUF[10]_inst O
load net s_axis_input_tdata_IBUF[11] -attr @rip(#000000) 11 -pin preproc s_axis_input_tdata_IBUF[11] -pin s_axis_input_tdata_IBUF[11]_inst O
load net s_axis_input_tdata_IBUF[12] -attr @rip(#000000) 12 -pin preproc s_axis_input_tdata_IBUF[12] -pin s_axis_input_tdata_IBUF[12]_inst O
load net s_axis_input_tdata_IBUF[13] -attr @rip(#000000) 13 -pin preproc s_axis_input_tdata_IBUF[13] -pin s_axis_input_tdata_IBUF[13]_inst O
load net s_axis_input_tdata_IBUF[14] -attr @rip(#000000) 14 -pin preproc s_axis_input_tdata_IBUF[14] -pin s_axis_input_tdata_IBUF[14]_inst O
load net s_axis_input_tdata_IBUF[15] -attr @rip(#000000) 15 -pin preproc s_axis_input_tdata_IBUF[15] -pin s_axis_input_tdata_IBUF[15]_inst O
load net s_axis_input_tdata_IBUF[16] -attr @rip(#000000) 16 -pin preproc s_axis_input_tdata_IBUF[16] -pin s_axis_input_tdata_IBUF[16]_inst O
load net s_axis_input_tdata_IBUF[17] -attr @rip(#000000) 17 -pin preproc s_axis_input_tdata_IBUF[17] -pin s_axis_input_tdata_IBUF[17]_inst O
load net s_axis_input_tdata_IBUF[18] -attr @rip(#000000) 18 -pin preproc s_axis_input_tdata_IBUF[18] -pin s_axis_input_tdata_IBUF[18]_inst O
load net s_axis_input_tdata_IBUF[19] -attr @rip(#000000) 19 -pin preproc s_axis_input_tdata_IBUF[19] -pin s_axis_input_tdata_IBUF[19]_inst O
load net s_axis_input_tdata_IBUF[1] -attr @rip(#000000) 1 -pin preproc s_axis_input_tdata_IBUF[1] -pin s_axis_input_tdata_IBUF[1]_inst O
load net s_axis_input_tdata_IBUF[20] -attr @rip(#000000) 20 -pin preproc s_axis_input_tdata_IBUF[20] -pin s_axis_input_tdata_IBUF[20]_inst O
load net s_axis_input_tdata_IBUF[21] -attr @rip(#000000) 21 -pin preproc s_axis_input_tdata_IBUF[21] -pin s_axis_input_tdata_IBUF[21]_inst O
load net s_axis_input_tdata_IBUF[22] -attr @rip(#000000) 22 -pin preproc s_axis_input_tdata_IBUF[22] -pin s_axis_input_tdata_IBUF[22]_inst O
load net s_axis_input_tdata_IBUF[23] -attr @rip(#000000) 23 -pin preproc s_axis_input_tdata_IBUF[23] -pin s_axis_input_tdata_IBUF[23]_inst O
load net s_axis_input_tdata_IBUF[2] -attr @rip(#000000) 2 -pin preproc s_axis_input_tdata_IBUF[2] -pin s_axis_input_tdata_IBUF[2]_inst O
load net s_axis_input_tdata_IBUF[3] -attr @rip(#000000) 3 -pin preproc s_axis_input_tdata_IBUF[3] -pin s_axis_input_tdata_IBUF[3]_inst O
load net s_axis_input_tdata_IBUF[4] -attr @rip(#000000) 4 -pin preproc s_axis_input_tdata_IBUF[4] -pin s_axis_input_tdata_IBUF[4]_inst O
load net s_axis_input_tdata_IBUF[5] -attr @rip(#000000) 5 -pin preproc s_axis_input_tdata_IBUF[5] -pin s_axis_input_tdata_IBUF[5]_inst O
load net s_axis_input_tdata_IBUF[6] -attr @rip(#000000) 6 -pin preproc s_axis_input_tdata_IBUF[6] -pin s_axis_input_tdata_IBUF[6]_inst O
load net s_axis_input_tdata_IBUF[7] -attr @rip(#000000) 7 -pin preproc s_axis_input_tdata_IBUF[7] -pin s_axis_input_tdata_IBUF[7]_inst O
load net s_axis_input_tdata_IBUF[8] -attr @rip(#000000) 8 -pin preproc s_axis_input_tdata_IBUF[8] -pin s_axis_input_tdata_IBUF[8]_inst O
load net s_axis_input_tdata_IBUF[9] -attr @rip(#000000) 9 -pin preproc s_axis_input_tdata_IBUF[9] -pin s_axis_input_tdata_IBUF[9]_inst O
load net s_axis_input_tlast -port s_axis_input_tlast -pin s_axis_input_tlast_IBUF_inst I
netloc s_axis_input_tlast 1 0 5 NJ 56970 NJ 56970 NJ 56970 NJ 56970 1860J
load net s_axis_input_tlast_IBUF -pin conv s_axis_tlast -pin s_axis_input_tlast_IBUF_inst O
netloc s_axis_input_tlast_IBUF 1 5 1 2770J 57120n
load net s_axis_input_tready -port s_axis_input_tready -pin s_axis_input_tready_OBUF_inst O
netloc s_axis_input_tready 1 15 1 NJ 60360
load net s_axis_input_tready_OBUF -pin preproc s_axis_input_tready_OBUF -pin s_axis_input_tready_OBUF_inst I
netloc s_axis_input_tready_OBUF 1 9 6 5700J 60360 NJ 60360 NJ 60360 NJ 60360 NJ 60360 NJ
load net s_axis_input_tvalid -port s_axis_input_tvalid -pin s_axis_input_tvalid_IBUF_inst I
netloc s_axis_input_tvalid 1 0 8 NJ 57170 NJ 57170 NJ 57170 NJ 57170 1780J 57350 2850J 57370 NJ 57370 NJ
load net s_axis_input_tvalid_IBUF -pin preproc s_axis_input_tvalid_IBUF -pin s_axis_input_tvalid_IBUF_inst O
netloc s_axis_input_tvalid_IBUF 1 8 1 5180J 56850n
load net s_kernel_tready -port s_kernel_tready -pin s_kernel_tready_OBUF_inst O
netloc s_kernel_tready 1 15 1 NJ 57210
load net s_kernel_tready_OBUF -attr @rip(#000000) out0[0] -pin conv out0[0] -pin s_kernel_tready_OBUF_inst I
load net s_kernel_tvalid -port s_kernel_tvalid -pin s_kernel_tvalid_IBUF_inst I
netloc s_kernel_tvalid 1 0 5 20J 56990 NJ 56990 NJ 56990 NJ 56990 1820J
load net s_kernel_tvalid_IBUF -pin conv s_kernel_tvalid_IBUF -pin s_kernel_tvalid_IBUF_inst O
netloc s_kernel_tvalid_IBUF 1 5 1 NJ 57190
load net stage_valid[0] -attr @rip(#000000) out[0] -pin conv out[0] -pin pipe_ctrl out[0] -pin preproc out[0]
load net stage_valid[1]
load net stage_valid[2]
load net stage_valid[3] -attr @rip(#000000) out[3] -pin dataflow stage_valid[0] -pin m_axis_output_tvalid_OBUF_inst I -pin pipe_ctrl out[3]
load net start_reg -attr @rip(#000000) Q[0] -pin dma_bridge Q[0] -pin loader beat_cnt_reg[15][0]
load net store_complete0 -pin dataflow store_complete -pin pipe_ctrl store_complete
netloc store_complete0 1 10 1 6340 56870n
load net sync_reset -pin act_fn sync_reset -pin clk_gate sync_reset -pin conv sync_reset -pin dataflow sync_reset -pin dma_bridge sync_reset -pin fc sync_reset -pin irq_ctrl sync_reset -pin loader sync_reset -pin perf sync_reset -pin pipe_ctrl sync_reset -pin pool sync_reset -pin preproc sync_reset -pin reg_file_reg[0][0] CLR -pin reg_file_reg[0][10] CLR -pin reg_file_reg[0][11] CLR -pin reg_file_reg[0][12] CLR -pin reg_file_reg[0][13] CLR -pin reg_file_reg[0][14] CLR -pin reg_file_reg[0][15] CLR -pin reg_file_reg[0][16] CLR -pin reg_file_reg[0][17] CLR -pin reg_file_reg[0][18] CLR -pin reg_file_reg[0][19] CLR -pin reg_file_reg[0][1] CLR -pin reg_file_reg[0][20] CLR -pin reg_file_reg[0][21] CLR -pin reg_file_reg[0][22] CLR -pin reg_file_reg[0][23] CLR -pin reg_file_reg[0][24] CLR -pin reg_file_reg[0][25] CLR -pin reg_file_reg[0][26] CLR -pin reg_file_reg[0][27] CLR -pin reg_file_reg[0][28] CLR -pin reg_file_reg[0][29] CLR -pin reg_file_reg[0][2] CLR -pin reg_file_reg[0][30] CLR -pin reg_file_reg[0][31] CLR -pin reg_file_reg[0][3] CLR -pin reg_file_reg[0][4] CLR -pin reg_file_reg[0][5] CLR -pin reg_file_reg[0][6] CLR -pin reg_file_reg[0][7] CLR -pin reg_file_reg[0][8] CLR -pin reg_file_reg[0][9] CLR -pin reg_file_reg[10][0] CLR -pin reg_file_reg[10][10] CLR -pin reg_file_reg[10][11] CLR -pin reg_file_reg[10][12] CLR -pin reg_file_reg[10][13] CLR -pin reg_file_reg[10][14] CLR -pin reg_file_reg[10][15] CLR -pin reg_file_reg[10][16] CLR -pin reg_file_reg[10][17] CLR -pin reg_file_reg[10][18] CLR -pin reg_file_reg[10][19] CLR -pin reg_file_reg[10][1] CLR -pin reg_file_reg[10][20] CLR -pin reg_file_reg[10][21] CLR -pin reg_file_reg[10][22] CLR -pin reg_file_reg[10][23] CLR -pin reg_file_reg[10][24] CLR -pin reg_file_reg[10][25] CLR -pin reg_file_reg[10][26] CLR -pin reg_file_reg[10][27] CLR -pin reg_file_reg[10][28] CLR -pin reg_file_reg[10][29] CLR -pin reg_file_reg[10][2] CLR -pin reg_file_reg[10][30] CLR -pin reg_file_reg[10][31] CLR -pin reg_file_reg[10][3] CLR -pin reg_file_reg[10][4] CLR -pin reg_file_reg[10][5] CLR -pin reg_file_reg[10][6] CLR -pin reg_file_reg[10][7] CLR -pin reg_file_reg[10][8] CLR -pin reg_file_reg[10][9] CLR -pin reg_file_reg[11][0] CLR -pin reg_file_reg[11][10] CLR -pin reg_file_reg[11][11] CLR -pin reg_file_reg[11][12] CLR -pin reg_file_reg[11][13] CLR -pin reg_file_reg[11][14] CLR -pin reg_file_reg[11][15] CLR -pin reg_file_reg[11][16] CLR -pin reg_file_reg[11][17] CLR -pin reg_file_reg[11][18] CLR -pin reg_file_reg[11][19] CLR -pin reg_file_reg[11][1] CLR -pin reg_file_reg[11][20] CLR -pin reg_file_reg[11][21] CLR -pin reg_file_reg[11][22] CLR -pin reg_file_reg[11][23] CLR -pin reg_file_reg[11][24] CLR -pin reg_file_reg[11][25] CLR -pin reg_file_reg[11][26] CLR -pin reg_file_reg[11][27] CLR -pin reg_file_reg[11][28] CLR -pin reg_file_reg[11][29] CLR -pin reg_file_reg[11][2] CLR -pin reg_file_reg[11][30] CLR -pin reg_file_reg[11][31] CLR -pin reg_file_reg[11][3] CLR -pin reg_file_reg[11][4] CLR -pin reg_file_reg[11][5] CLR -pin reg_file_reg[11][6] CLR -pin reg_file_reg[11][7] CLR -pin reg_file_reg[11][8] CLR -pin reg_file_reg[11][9] CLR -pin reg_file_reg[12][0] CLR -pin reg_file_reg[12][10] CLR -pin reg_file_reg[12][11] CLR -pin reg_file_reg[12][12] CLR -pin reg_file_reg[12][13] CLR -pin reg_file_reg[12][14] CLR -pin reg_file_reg[12][15] CLR -pin reg_file_reg[12][16] CLR -pin reg_file_reg[12][17] CLR -pin reg_file_reg[12][18] CLR -pin reg_file_reg[12][19] CLR -pin reg_file_reg[12][1] CLR -pin reg_file_reg[12][20] CLR -pin reg_file_reg[12][21] CLR -pin reg_file_reg[12][22] CLR -pin reg_file_reg[12][23] CLR -pin reg_file_reg[12][24] CLR -pin reg_file_reg[12][25] CLR -pin reg_file_reg[12][26] CLR -pin reg_file_reg[12][27] CLR -pin reg_file_reg[12][28] CLR -pin reg_file_reg[12][29] CLR -pin reg_file_reg[12][2] CLR -pin reg_file_reg[12][30] CLR -pin reg_file_reg[12][31] CLR -pin reg_file_reg[12][3] CLR -pin reg_file_reg[12][4] CLR -pin reg_file_reg[12][5] CLR -pin reg_file_reg[12][6] CLR -pin reg_file_reg[12][7] CLR -pin reg_file_reg[12][8] CLR -pin reg_file_reg[12][9] CLR -pin reg_file_reg[13][0] CLR -pin reg_file_reg[13][10] CLR -pin reg_file_reg[13][11] CLR -pin reg_file_reg[13][12] CLR -pin reg_file_reg[13][13] CLR -pin reg_file_reg[13][14] CLR -pin reg_file_reg[13][15] CLR -pin reg_file_reg[13][16] CLR -pin reg_file_reg[13][17] CLR -pin reg_file_reg[13][18] CLR -pin reg_file_reg[13][19] CLR -pin reg_file_reg[13][1] CLR -pin reg_file_reg[13][20] CLR -pin reg_file_reg[13][21] CLR -pin reg_file_reg[13][22] CLR -pin reg_file_reg[13][23] CLR -pin reg_file_reg[13][24] CLR -pin reg_file_reg[13][25] CLR -pin reg_file_reg[13][26] CLR -pin reg_file_reg[13][27] CLR -pin reg_file_reg[13][28] CLR -pin reg_file_reg[13][29] CLR -pin reg_file_reg[13][2] CLR -pin reg_file_reg[13][30] CLR -pin reg_file_reg[13][31] CLR -pin reg_file_reg[13][3] CLR -pin reg_file_reg[13][4] CLR -pin reg_file_reg[13][5] CLR -pin reg_file_reg[13][6] CLR -pin reg_file_reg[13][7] CLR -pin reg_file_reg[13][8] CLR -pin reg_file_reg[13][9] CLR -pin reg_file_reg[14][0] CLR -pin reg_file_reg[14][10] CLR -pin reg_file_reg[14][11] CLR -pin reg_file_reg[14][12] CLR -pin reg_file_reg[14][13] CLR -pin reg_file_reg[14][14] CLR -pin reg_file_reg[14][15] CLR -pin reg_file_reg[14][16] CLR -pin reg_file_reg[14][17] CLR -pin reg_file_reg[14][18] CLR -pin reg_file_reg[14][19] CLR -pin reg_file_reg[14][1] CLR -pin reg_file_reg[14][20] CLR -pin reg_file_reg[14][21] CLR -pin reg_file_reg[14][22] CLR -pin reg_file_reg[14][23] CLR -pin reg_file_reg[14][24] CLR -pin reg_file_reg[14][25] CLR -pin reg_file_reg[14][26] CLR -pin reg_file_reg[14][27] CLR -pin reg_file_reg[14][28] CLR -pin reg_file_reg[14][29] CLR -pin reg_file_reg[14][2] CLR -pin reg_file_reg[14][30] CLR -pin reg_file_reg[14][31] CLR -pin reg_file_reg[14][3] CLR -pin reg_file_reg[14][4] CLR -pin reg_file_reg[14][5] CLR -pin reg_file_reg[14][6] CLR -pin reg_file_reg[14][7] CLR -pin reg_file_reg[14][8] CLR -pin reg_file_reg[14][9] CLR -pin reg_file_reg[15][0] CLR -pin reg_file_reg[15][10] CLR -pin reg_file_reg[15][11] CLR -pin reg_file_reg[15][12] CLR -pin reg_file_reg[15][13] CLR -pin reg_file_reg[15][14] CLR -pin reg_file_reg[15][15] CLR -pin reg_file_reg[15][16] CLR -pin reg_file_reg[15][17] CLR -pin reg_file_reg[15][18] CLR -pin reg_file_reg[15][19] CLR -pin reg_file_reg[15][1] CLR -pin reg_file_reg[15][20] CLR -pin reg_file_reg[15][21] CLR -pin reg_file_reg[15][22] CLR -pin reg_file_reg[15][23] CLR -pin reg_file_reg[15][24] CLR -pin reg_file_reg[15][25] CLR -pin reg_file_reg[15][26] CLR -pin reg_file_reg[15][27] CLR -pin reg_file_reg[15][28] CLR -pin reg_file_reg[15][29] CLR -pin reg_file_reg[15][2] CLR -pin reg_file_reg[15][30] CLR -pin reg_file_reg[15][31] CLR -pin reg_file_reg[15][3] CLR -pin reg_file_reg[15][4] CLR -pin reg_file_reg[15][5] CLR -pin reg_file_reg[15][6] CLR -pin reg_file_reg[15][7] CLR -pin reg_file_reg[15][8] CLR -pin reg_file_reg[15][9] CLR -pin reg_file_reg[1][0] CLR -pin reg_file_reg[1][10] CLR -pin reg_file_reg[1][11] CLR -pin reg_file_reg[1][12] CLR -pin reg_file_reg[1][13] CLR -pin reg_file_reg[1][14] CLR -pin reg_file_reg[1][15] CLR -pin reg_file_reg[1][16] CLR -pin reg_file_reg[1][17] CLR -pin reg_file_reg[1][18] CLR -pin reg_file_reg[1][19] CLR -pin reg_file_reg[1][1] CLR -pin reg_file_reg[1][20] CLR -pin reg_file_reg[1][21] CLR -pin reg_file_reg[1][22] CLR -pin reg_file_reg[1][23] CLR -pin reg_file_reg[1][24] CLR -pin reg_file_reg[1][25] CLR -pin reg_file_reg[1][26] CLR -pin reg_file_reg[1][27] CLR -pin reg_file_reg[1][28] CLR -pin reg_file_reg[1][29] CLR -pin reg_file_reg[1][2] CLR -pin reg_file_reg[1][30] CLR -pin reg_file_reg[1][31] CLR -pin reg_file_reg[1][3] CLR -pin reg_file_reg[1][4] CLR -pin reg_file_reg[1][5] CLR -pin reg_file_reg[1][6] CLR -pin reg_file_reg[1][7] CLR -pin reg_file_reg[1][8] CLR -pin reg_file_reg[1][9] CLR -pin reg_file_reg[2][0] CLR -pin reg_file_reg[2][10] CLR -pin reg_file_reg[2][11] CLR -pin reg_file_reg[2][12] CLR -pin reg_file_reg[2][13] CLR -pin reg_file_reg[2][14] CLR -pin reg_file_reg[2][15] CLR -pin reg_file_reg[2][16] CLR -pin reg_file_reg[2][17] CLR -pin reg_file_reg[2][18] CLR -pin reg_file_reg[2][19] CLR -pin reg_file_reg[2][1] CLR -pin reg_file_reg[2][20] CLR -pin reg_file_reg[2][21] CLR -pin reg_file_reg[2][22] CLR -pin reg_file_reg[2][23] CLR -pin reg_file_reg[2][24] CLR -pin reg_file_reg[2][25] CLR -pin reg_file_reg[2][26] CLR -pin reg_file_reg[2][27] CLR -pin reg_file_reg[2][28] CLR -pin reg_file_reg[2][29] CLR -pin reg_file_reg[2][2] CLR -pin reg_file_reg[2][30] CLR -pin reg_file_reg[2][31] CLR -pin reg_file_reg[2][3] CLR -pin reg_file_reg[2][4] CLR -pin reg_file_reg[2][5] CLR -pin reg_file_reg[2][6] CLR -pin reg_file_reg[2][7] CLR -pin reg_file_reg[2][8] CLR -pin reg_file_reg[2][9] CLR -pin reg_file_reg[3][0] CLR -pin reg_file_reg[3][10] CLR -pin reg_file_reg[3][11] CLR -pin reg_file_reg[3][12] CLR -pin reg_file_reg[3][13] CLR -pin reg_file_reg[3][14] CLR -pin reg_file_reg[3][15] CLR -pin reg_file_reg[3][16] CLR -pin reg_file_reg[3][17] CLR -pin reg_file_reg[3][18] CLR -pin reg_file_reg[3][19] CLR -pin reg_file_reg[3][1] CLR -pin reg_file_reg[3][20] CLR -pin reg_file_reg[3][21] CLR -pin reg_file_reg[3][22] CLR -pin reg_file_reg[3][23] CLR -pin reg_file_reg[3][24] CLR -pin reg_file_reg[3][25] CLR -pin reg_file_reg[3][26] CLR -pin reg_file_reg[3][27] CLR -pin reg_file_reg[3][28] CLR -pin reg_file_reg[3][29] CLR -pin reg_file_reg[3][2] CLR -pin reg_file_reg[3][30] CLR -pin reg_file_reg[3][31] CLR -pin reg_file_reg[3][3] CLR -pin reg_file_reg[3][4] CLR -pin reg_file_reg[3][5] CLR -pin reg_file_reg[3][6] CLR -pin reg_file_reg[3][7] CLR -pin reg_file_reg[3][8] CLR -pin reg_file_reg[3][9] CLR -pin reg_file_reg[4][0] CLR -pin reg_file_reg[4][10] CLR -pin reg_file_reg[4][11] CLR -pin reg_file_reg[4][12] CLR -pin reg_file_reg[4][13] CLR -pin reg_file_reg[4][14] CLR -pin reg_file_reg[4][15] CLR -pin reg_file_reg[4][16] CLR -pin reg_file_reg[4][17] CLR -pin reg_file_reg[4][18] CLR -pin reg_file_reg[4][19] CLR -pin reg_file_reg[4][1] CLR -pin reg_file_reg[4][20] CLR -pin reg_file_reg[4][21] CLR -pin reg_file_reg[4][22] CLR -pin reg_file_reg[4][23] CLR -pin reg_file_reg[4][24] CLR -pin reg_file_reg[4][25] CLR -pin reg_file_reg[4][26] CLR -pin reg_file_reg[4][27] CLR -pin reg_file_reg[4][28] CLR -pin reg_file_reg[4][29] CLR -pin reg_file_reg[4][2] CLR -pin reg_file_reg[4][30] CLR -pin reg_file_reg[4][31] CLR -pin reg_file_reg[4][3] CLR -pin reg_file_reg[4][4] CLR -pin reg_file_reg[4][5] CLR -pin reg_file_reg[4][6] CLR -pin reg_file_reg[4][7] CLR -pin reg_file_reg[4][8] CLR -pin reg_file_reg[4][9] CLR -pin reg_file_reg[5][0] CLR -pin reg_file_reg[5][10] CLR -pin reg_file_reg[5][11] CLR -pin reg_file_reg[5][12] CLR -pin reg_file_reg[5][13] CLR -pin reg_file_reg[5][14] CLR -pin reg_file_reg[5][15] CLR -pin reg_file_reg[5][16] CLR -pin reg_file_reg[5][17] CLR -pin reg_file_reg[5][18] CLR -pin reg_file_reg[5][19] CLR -pin reg_file_reg[5][1] CLR -pin reg_file_reg[5][20] CLR -pin reg_file_reg[5][21] CLR -pin reg_file_reg[5][22] CLR -pin reg_file_reg[5][23] CLR -pin reg_file_reg[5][24] CLR -pin reg_file_reg[5][25] CLR -pin reg_file_reg[5][26] CLR -pin reg_file_reg[5][27] CLR -pin reg_file_reg[5][28] CLR -pin reg_file_reg[5][29] CLR -pin reg_file_reg[5][2] CLR -pin reg_file_reg[5][30] CLR -pin reg_file_reg[5][31] CLR -pin reg_file_reg[5][3] CLR -pin reg_file_reg[5][4] CLR -pin reg_file_reg[5][5] CLR -pin reg_file_reg[5][6] CLR -pin reg_file_reg[5][7] CLR -pin reg_file_reg[5][8] CLR -pin reg_file_reg[5][9] CLR -pin reg_file_reg[6][0] CLR -pin reg_file_reg[6][10] CLR -pin reg_file_reg[6][11] CLR -pin reg_file_reg[6][12] CLR -pin reg_file_reg[6][13] CLR -pin reg_file_reg[6][14] CLR -pin reg_file_reg[6][15] CLR -pin reg_file_reg[6][16] CLR -pin reg_file_reg[6][17] CLR -pin reg_file_reg[6][18] CLR -pin reg_file_reg[6][19] CLR -pin reg_file_reg[6][1] CLR -pin reg_file_reg[6][20] CLR -pin reg_file_reg[6][21] CLR -pin reg_file_reg[6][22] CLR -pin reg_file_reg[6][23] CLR -pin reg_file_reg[6][24] CLR -pin reg_file_reg[6][25] CLR -pin reg_file_reg[6][26] CLR -pin reg_file_reg[6][27] CLR -pin reg_file_reg[6][28] CLR -pin reg_file_reg[6][29] CLR -pin reg_file_reg[6][2] CLR -pin reg_file_reg[6][30] CLR -pin reg_file_reg[6][31] CLR -pin reg_file_reg[6][3] CLR -pin reg_file_reg[6][4] CLR -pin reg_file_reg[6][5] CLR -pin reg_file_reg[6][6] CLR -pin reg_file_reg[6][7] CLR -pin reg_file_reg[6][8] CLR -pin reg_file_reg[6][9] CLR -pin reg_file_reg[7][0] CLR -pin reg_file_reg[7][10] CLR -pin reg_file_reg[7][11] CLR -pin reg_file_reg[7][12] CLR -pin reg_file_reg[7][13] CLR -pin reg_file_reg[7][14] CLR -pin reg_file_reg[7][15] CLR -pin reg_file_reg[7][16] CLR -pin reg_file_reg[7][17] CLR -pin reg_file_reg[7][18] CLR -pin reg_file_reg[7][19] CLR -pin reg_file_reg[7][1] CLR -pin reg_file_reg[7][20] CLR -pin reg_file_reg[7][21] CLR -pin reg_file_reg[7][22] CLR -pin reg_file_reg[7][23] CLR -pin reg_file_reg[7][24] CLR -pin reg_file_reg[7][25] CLR -pin reg_file_reg[7][26] CLR -pin reg_file_reg[7][27] CLR -pin reg_file_reg[7][28] CLR -pin reg_file_reg[7][29] CLR -pin reg_file_reg[7][2] CLR -pin reg_file_reg[7][30] CLR -pin reg_file_reg[7][31] CLR -pin reg_file_reg[7][3] CLR -pin reg_file_reg[7][4] CLR -pin reg_file_reg[7][5] CLR -pin reg_file_reg[7][6] CLR -pin reg_file_reg[7][7] CLR -pin reg_file_reg[7][8] CLR -pin reg_file_reg[7][9] CLR -pin reg_file_reg[8][0] CLR -pin reg_file_reg[8][10] CLR -pin reg_file_reg[8][11] CLR -pin reg_file_reg[8][12] CLR -pin reg_file_reg[8][13] CLR -pin reg_file_reg[8][14] CLR -pin reg_file_reg[8][15] CLR -pin reg_file_reg[8][16] CLR -pin reg_file_reg[8][17] CLR -pin reg_file_reg[8][18] CLR -pin reg_file_reg[8][19] CLR -pin reg_file_reg[8][1] CLR -pin reg_file_reg[8][20] CLR -pin reg_file_reg[8][21] CLR -pin reg_file_reg[8][22] CLR -pin reg_file_reg[8][23] CLR -pin reg_file_reg[8][24] CLR -pin reg_file_reg[8][25] CLR -pin reg_file_reg[8][26] CLR -pin reg_file_reg[8][27] CLR -pin reg_file_reg[8][28] CLR -pin reg_file_reg[8][29] CLR -pin reg_file_reg[8][2] CLR -pin reg_file_reg[8][30] CLR -pin reg_file_reg[8][31] CLR -pin reg_file_reg[8][3] CLR -pin reg_file_reg[8][4] CLR -pin reg_file_reg[8][5] CLR -pin reg_file_reg[8][6] CLR -pin reg_file_reg[8][7] CLR -pin reg_file_reg[8][8] CLR -pin reg_file_reg[8][9] CLR -pin reg_file_reg[9][0] CLR -pin reg_file_reg[9][10] CLR -pin reg_file_reg[9][11] CLR -pin reg_file_reg[9][12] CLR -pin reg_file_reg[9][13] CLR -pin reg_file_reg[9][14] CLR -pin reg_file_reg[9][15] CLR -pin reg_file_reg[9][16] CLR -pin reg_file_reg[9][17] CLR -pin reg_file_reg[9][18] CLR -pin reg_file_reg[9][19] CLR -pin reg_file_reg[9][1] CLR -pin reg_file_reg[9][20] CLR -pin reg_file_reg[9][21] CLR -pin reg_file_reg[9][22] CLR -pin reg_file_reg[9][23] CLR -pin reg_file_reg[9][24] CLR -pin reg_file_reg[9][25] CLR -pin reg_file_reg[9][26] CLR -pin reg_file_reg[9][27] CLR -pin reg_file_reg[9][28] CLR -pin reg_file_reg[9][29] CLR -pin reg_file_reg[9][2] CLR -pin reg_file_reg[9][30] CLR -pin reg_file_reg[9][31] CLR -pin reg_file_reg[9][3] CLR -pin reg_file_reg[9][4] CLR -pin reg_file_reg[9][5] CLR -pin reg_file_reg[9][6] CLR -pin reg_file_reg[9][7] CLR -pin reg_file_reg[9][8] CLR -pin reg_file_reg[9][9] CLR -pin reset_mgr sync_reset -pin s_axi_arready_reg_reg CLR -pin s_axi_awready_reg_reg CLR -pin s_axi_bvalid_reg_reg CLR -pin s_axi_rdata_reg_reg[0] CLR -pin s_axi_rdata_reg_reg[10] CLR -pin s_axi_rdata_reg_reg[11] CLR -pin s_axi_rdata_reg_reg[12] CLR -pin s_axi_rdata_reg_reg[13] CLR -pin s_axi_rdata_reg_reg[14] CLR -pin s_axi_rdata_reg_reg[15] CLR -pin s_axi_rdata_reg_reg[16] CLR -pin s_axi_rdata_reg_reg[17] CLR -pin s_axi_rdata_reg_reg[18] CLR -pin s_axi_rdata_reg_reg[19] CLR -pin s_axi_rdata_reg_reg[1] CLR -pin s_axi_rdata_reg_reg[20] CLR -pin s_axi_rdata_reg_reg[21] CLR -pin s_axi_rdata_reg_reg[22] CLR -pin s_axi_rdata_reg_reg[23] CLR -pin s_axi_rdata_reg_reg[24] CLR -pin s_axi_rdata_reg_reg[25] CLR -pin s_axi_rdata_reg_reg[26] CLR -pin s_axi_rdata_reg_reg[27] CLR -pin s_axi_rdata_reg_reg[28] CLR -pin s_axi_rdata_reg_reg[29] CLR -pin s_axi_rdata_reg_reg[2] CLR -pin s_axi_rdata_reg_reg[30] CLR -pin s_axi_rdata_reg_reg[31] CLR -pin s_axi_rdata_reg_reg[3] CLR -pin s_axi_rdata_reg_reg[4] CLR -pin s_axi_rdata_reg_reg[5] CLR -pin s_axi_rdata_reg_reg[6] CLR -pin s_axi_rdata_reg_reg[7] CLR -pin s_axi_rdata_reg_reg[8] CLR -pin s_axi_rdata_reg_reg[9] CLR -pin s_axi_rvalid_reg_reg CLR -pin s_axi_wready_reg_reg CLR
netloc sync_reset 1 3 11 1380 55520 2280 55740 2850 56260 3510 56060 4450 56910 5060 56990 5780 57110 6320 57230 6920 57470 7600 57450 7990
load net valid_out -port valid_out -pin valid_out_OBUF_inst O
netloc valid_out 1 15 1 NJ 58260
load netBundle @s_axi_araddr 8 s_axi_araddr[7] s_axi_araddr[6] s_axi_araddr[5] s_axi_araddr[4] s_axi_araddr[3] s_axi_araddr[2] s_axi_araddr[1] s_axi_araddr[0] -autobundled
netbloc @s_axi_araddr 1 0 4 NJ 64790 NJ 64790 NJ 64790 1420
load netBundle @s_axi_awaddr 8 s_axi_awaddr[7] s_axi_awaddr[6] s_axi_awaddr[5] s_axi_awaddr[4] s_axi_awaddr[3] s_axi_awaddr[2] s_axi_awaddr[1] s_axi_awaddr[0] -autobundled
netbloc @s_axi_awaddr 1 0 1 20 57370n
load netBundle @s_axi_wdata 32 s_axi_wdata[31] s_axi_wdata[30] s_axi_wdata[29] s_axi_wdata[28] s_axi_wdata[27] s_axi_wdata[26] s_axi_wdata[25] s_axi_wdata[24] s_axi_wdata[23] s_axi_wdata[22] s_axi_wdata[21] s_axi_wdata[20] s_axi_wdata[19] s_axi_wdata[18] s_axi_wdata[17] s_axi_wdata[16] s_axi_wdata[15] s_axi_wdata[14] s_axi_wdata[13] s_axi_wdata[12] s_axi_wdata[11] s_axi_wdata[10] s_axi_wdata[9] s_axi_wdata[8] s_axi_wdata[7] s_axi_wdata[6] s_axi_wdata[5] s_axi_wdata[4] s_axi_wdata[3] s_axi_wdata[2] s_axi_wdata[1] s_axi_wdata[0] -autobundled
netbloc @s_axi_wdata 1 0 3 NJ 65610 NJ 65610 600
load netBundle @s_axi_wstrb 4 s_axi_wstrb[3] s_axi_wstrb[2] s_axi_wstrb[1] s_axi_wstrb[0] -autobundled
netbloc @s_axi_wstrb 1 0 2 NJ 64830 280
load netBundle @s_axis_input_tdata 24 s_axis_input_tdata[23] s_axis_input_tdata[22] s_axis_input_tdata[21] s_axis_input_tdata[20] s_axis_input_tdata[19] s_axis_input_tdata[18] s_axis_input_tdata[17] s_axis_input_tdata[16] s_axis_input_tdata[15] s_axis_input_tdata[14] s_axis_input_tdata[13] s_axis_input_tdata[12] s_axis_input_tdata[11] s_axis_input_tdata[10] s_axis_input_tdata[9] s_axis_input_tdata[8] s_axis_input_tdata[7] s_axis_input_tdata[6] s_axis_input_tdata[5] s_axis_input_tdata[4] s_axis_input_tdata[3] s_axis_input_tdata[2] s_axis_input_tdata[1] s_axis_input_tdata[0] -autobundled
netbloc @s_axis_input_tdata 1 0 8 NJ 56650 NJ 56650 NJ 56650 NJ 56650 NJ 56650 NJ 56650 3390J 56670 4490
load netBundle @debug_out 8 debug_out[7] debug_out[6] debug_out[5] debug_out[4] debug_out[3] debug_out[2] debug_out[1] debug_out[0] -autobundled
netbloc @debug_out 1 15 1 9040 56230n
load netBundle @m_axi_araddr 32 m_axi_araddr[31] m_axi_araddr[30] m_axi_araddr[29] m_axi_araddr[28] m_axi_araddr[27] m_axi_araddr[26] m_axi_araddr[25] m_axi_araddr[24] m_axi_araddr[23] m_axi_araddr[22] m_axi_araddr[21] m_axi_araddr[20] m_axi_araddr[19] m_axi_araddr[18] m_axi_araddr[17] m_axi_araddr[16] m_axi_araddr[15] m_axi_araddr[14] m_axi_araddr[13] m_axi_araddr[12] m_axi_araddr[11] m_axi_araddr[10] m_axi_araddr[9] m_axi_araddr[8] m_axi_araddr[7] m_axi_araddr[6] m_axi_araddr[5] m_axi_araddr[4] m_axi_araddr[3] m_axi_araddr[2] m_axi_araddr[1] m_axi_araddr[0] -autobundled
netbloc @m_axi_araddr 1 15 1 9020 51890n
load netBundle @m_axi_arlen 8 m_axi_arlen[7] m_axi_arlen[6] m_axi_arlen[5] m_axi_arlen[4] m_axi_arlen[3] m_axi_arlen[2] m_axi_arlen[1] m_axi_arlen[0] -autobundled
netbloc @m_axi_arlen 1 15 1 9020 58330n
load netBundle @m_axi_awaddr 32 m_axi_awaddr[31] m_axi_awaddr[30] m_axi_awaddr[29] m_axi_awaddr[28] m_axi_awaddr[27] m_axi_awaddr[26] m_axi_awaddr[25] m_axi_awaddr[24] m_axi_awaddr[23] m_axi_awaddr[22] m_axi_awaddr[21] m_axi_awaddr[20] m_axi_awaddr[19] m_axi_awaddr[18] m_axi_awaddr[17] m_axi_awaddr[16] m_axi_awaddr[15] m_axi_awaddr[14] m_axi_awaddr[13] m_axi_awaddr[12] m_axi_awaddr[11] m_axi_awaddr[10] m_axi_awaddr[9] m_axi_awaddr[8] m_axi_awaddr[7] m_axi_awaddr[6] m_axi_awaddr[5] m_axi_awaddr[4] m_axi_awaddr[3] m_axi_awaddr[2] m_axi_awaddr[1] m_axi_awaddr[0] -autobundled
netbloc @m_axi_awaddr 1 15 1 9020 49510n
load netBundle @m_axi_awlen 8 m_axi_awlen[7] m_axi_awlen[6] m_axi_awlen[5] m_axi_awlen[4] m_axi_awlen[3] m_axi_awlen[2] m_axi_awlen[1] m_axi_awlen[0] -autobundled
netbloc @m_axi_awlen 1 15 1 9040 58960n
load netBundle @m_axi_wdata 8 m_axi_wdata[7] m_axi_wdata[6] m_axi_wdata[5] m_axi_wdata[4] m_axi_wdata[3] m_axi_wdata[2] m_axi_wdata[1] m_axi_wdata[0] -autobundled
netbloc @m_axi_wdata 1 15 1 9020 19320n
load netBundle @m_axis_output_tdata 24 m_axis_output_tdata[23] m_axis_output_tdata[22] m_axis_output_tdata[21] m_axis_output_tdata[20] m_axis_output_tdata[19] m_axis_output_tdata[18] m_axis_output_tdata[17] m_axis_output_tdata[16] m_axis_output_tdata[15] m_axis_output_tdata[14] m_axis_output_tdata[13] m_axis_output_tdata[12] m_axis_output_tdata[11] m_axis_output_tdata[10] m_axis_output_tdata[9] m_axis_output_tdata[8] m_axis_output_tdata[7] m_axis_output_tdata[6] m_axis_output_tdata[5] m_axis_output_tdata[4] m_axis_output_tdata[3] m_axis_output_tdata[2] m_axis_output_tdata[1] m_axis_output_tdata[0] -autobundled
netbloc @m_axis_output_tdata 1 15 1 9020 59730n
load netBundle @processed_data 8 processed_data[7] processed_data[6] processed_data[5] processed_data[4] processed_data[3] processed_data[2] processed_data[1] processed_data[0] -autobundled
netbloc @processed_data 1 15 1 9040 57490n
load netBundle @s_axi_bresp 2 s_axi_bresp[1] s_axi_bresp[0] -autobundled
netbloc @s_axi_bresp 1 15 1 9040 55320n
load netBundle @s_axi_rdata 32 s_axi_rdata[31] s_axi_rdata[30] s_axi_rdata[29] s_axi_rdata[28] s_axi_rdata[27] s_axi_rdata[26] s_axi_rdata[25] s_axi_rdata[24] s_axi_rdata[23] s_axi_rdata[22] s_axi_rdata[21] s_axi_rdata[20] s_axi_rdata[19] s_axi_rdata[18] s_axi_rdata[17] s_axi_rdata[16] s_axi_rdata[15] s_axi_rdata[14] s_axi_rdata[13] s_axi_rdata[12] s_axi_rdata[11] s_axi_rdata[10] s_axi_rdata[9] s_axi_rdata[8] s_axi_rdata[7] s_axi_rdata[6] s_axi_rdata[5] s_axi_rdata[4] s_axi_rdata[3] s_axi_rdata[2] s_axi_rdata[1] s_axi_rdata[0] -autobundled
netbloc @s_axi_rdata 1 15 1 9020 54130n
load netBundle @s_axi_rresp 2 s_axi_rresp[1] s_axi_rresp[0] -autobundled
netbloc @s_axi_rresp 1 15 1 9020 51750n
load netBundle @debug_out_OBUF 2 debug_out_OBUF[1] s_kernel_tready_OBUF -autobundled
netbloc @debug_out_OBUF 1 6 9 3690 57170 4210 57070 5100 57010 NJ 57010 6420 57490 NJ 57490 7480J 57410 NJ 57410 8640
load netBundle @m_axi_arvalid_OBUF 5 m_axi_arvalid_OBUF m_axi_rready_OBUF m_axi_awvalid_OBUF m_axi_wvalid_OBUF start_reg -autobundled
netbloc @m_axi_arvalid_OBUF 1 6 9 3750 55800 4250J 55320 5180 55810 NJ 55810 NJ 55810 NJ 55810 NJ 55810 NJ 55810 8540
load netBundle @m_axi_awlen_OBUF 8 m_axi_awlen_OBUF[7] m_axi_awlen_OBUF[6] m_axi_awlen_OBUF[5] m_axi_awlen_OBUF[4] m_axi_awlen_OBUF[3] m_axi_awlen_OBUF[2] m_axi_awlen_OBUF[1] m_axi_awlen_OBUF[0] -autobundled
netbloc @m_axi_awlen_OBUF 1 8 7 NJ 55830 NJ 55830 NJ 55830 NJ 55830 NJ 55830 NJ 55830 8600
load netBundle @m_axi_araddr_OBUF 32 m_axi_araddr_OBUF[31] m_axi_araddr_OBUF[30] m_axi_araddr_OBUF[29] m_axi_araddr_OBUF[28] m_axi_araddr_OBUF[27] m_axi_araddr_OBUF[26] m_axi_araddr_OBUF[25] m_axi_araddr_OBUF[24] m_axi_araddr_OBUF[23] m_axi_araddr_OBUF[22] m_axi_araddr_OBUF[21] m_axi_araddr_OBUF[20] m_axi_araddr_OBUF[19] m_axi_araddr_OBUF[18] m_axi_araddr_OBUF[17] m_axi_araddr_OBUF[16] m_axi_araddr_OBUF[15] m_axi_araddr_OBUF[14] m_axi_araddr_OBUF[13] m_axi_araddr_OBUF[12] m_axi_araddr_OBUF[11] m_axi_araddr_OBUF[10] m_axi_araddr_OBUF[9] m_axi_araddr_OBUF[8] m_axi_araddr_OBUF[7] m_axi_araddr_OBUF[6] m_axi_araddr_OBUF[5] m_axi_araddr_OBUF[4] m_axi_araddr_OBUF[3] m_axi_araddr_OBUF[2] m_axi_araddr_OBUF[1] m_axi_araddr_OBUF[0] -autobundled
netbloc @m_axi_araddr_OBUF 1 8 7 4980 55710 NJ 55710 NJ 55710 NJ 55710 NJ 55710 NJ 55710 8440
load netBundle @s_axi_rdata_dma 6 s_axi_rdata_dma[7] s_axi_rdata_dma[6] s_axi_rdata_dma[5] s_axi_rdata_dma[4] s_axi_rdata_dma[3] s_axi_rdata_dma[2] -autobundled
netbloc @s_axi_rdata_dma 1 6 3 3730 56170 NJ 56170 4960
load netBundle @s_axi_rdata_OBUF 26 s_axi_rdata_OBUF[31] s_axi_rdata_OBUF[30] s_axi_rdata_OBUF[29] s_axi_rdata_OBUF[28] s_axi_rdata_OBUF[27] s_axi_rdata_OBUF[26] s_axi_rdata_OBUF[25] s_axi_rdata_OBUF[24] s_axi_rdata_OBUF[23] s_axi_rdata_OBUF[22] s_axi_rdata_OBUF[21] s_axi_rdata_OBUF[20] s_axi_rdata_OBUF[19] s_axi_rdata_OBUF[18] s_axi_rdata_OBUF[17] s_axi_rdata_OBUF[16] s_axi_rdata_OBUF[15] s_axi_rdata_OBUF[14] s_axi_rdata_OBUF[13] s_axi_rdata_OBUF[12] s_axi_rdata_OBUF[11] s_axi_rdata_OBUF[10] s_axi_rdata_OBUF[9] s_axi_rdata_OBUF[8] s_axi_rdata_OBUF[1] s_axi_rdata_OBUF[0] -autobundled
netbloc @s_axi_rdata_OBUF 1 8 7 5180 56420 NJ 56420 NJ 56420 NJ 56420 NJ 56420 NJ 56420 8700
load netBundle @m_axi_awaddr_OBUF 32 m_axi_awaddr_OBUF[31] m_axi_awaddr_OBUF[30] m_axi_awaddr_OBUF[29] m_axi_awaddr_OBUF[28] m_axi_awaddr_OBUF[27] m_axi_awaddr_OBUF[26] m_axi_awaddr_OBUF[25] m_axi_awaddr_OBUF[24] m_axi_awaddr_OBUF[23] m_axi_awaddr_OBUF[22] m_axi_awaddr_OBUF[21] m_axi_awaddr_OBUF[20] m_axi_awaddr_OBUF[19] m_axi_awaddr_OBUF[18] m_axi_awaddr_OBUF[17] m_axi_awaddr_OBUF[16] m_axi_awaddr_OBUF[15] m_axi_awaddr_OBUF[14] m_axi_awaddr_OBUF[13] m_axi_awaddr_OBUF[12] m_axi_awaddr_OBUF[11] m_axi_awaddr_OBUF[10] m_axi_awaddr_OBUF[9] m_axi_awaddr_OBUF[8] m_axi_awaddr_OBUF[7] m_axi_awaddr_OBUF[6] m_axi_awaddr_OBUF[5] m_axi_awaddr_OBUF[4] m_axi_awaddr_OBUF[3] m_axi_awaddr_OBUF[2] m_axi_awaddr_OBUF[1] m_axi_awaddr_OBUF[0] -autobundled
netbloc @m_axi_awaddr_OBUF 1 8 7 NJ 55910 NJ 55910 NJ 55910 NJ 55910 NJ 55910 NJ 55910 8420
load netBundle @processed_data_OBUF 8 processed_data_OBUF[7] processed_data_OBUF[6] processed_data_OBUF[5] processed_data_OBUF[4] processed_data_OBUF[3] processed_data_OBUF[2] processed_data_OBUF[1] processed_data_OBUF[0] -autobundled
netbloc @processed_data_OBUF 1 14 1 8700 57490n
load netBundle @s_axi_rdata_irq 2 s_axi_rdata_irq[1] s_axi_rdata_irq[0] -autobundled
netbloc @s_axi_rdata_irq 1 7 1 4350 55890n
load netBundle @s_axi_rdata_OBUF_1 6 s_axi_rdata_OBUF[7] s_axi_rdata_OBUF[6] s_axi_rdata_OBUF[5] s_axi_rdata_OBUF[4] s_axi_rdata_OBUF[3] s_axi_rdata_OBUF[2] -autobundled
netbloc @s_axi_rdata_OBUF_1 1 7 8 4330 56400 5040J 56380 NJ 56380 NJ 56380 NJ 56380 NJ 56380 NJ 56380 8480
load netBundle @perf_n_ 32 perf_n_0 perf_n_1 perf_n_2 perf_n_3 perf_n_4 perf_n_5 perf_n_6 perf_n_7 perf_n_8 perf_n_9 perf_n_10 perf_n_11 perf_n_12 perf_n_13 perf_n_14 perf_n_15 perf_n_16 perf_n_17 perf_n_18 perf_n_19 perf_n_20 perf_n_21 perf_n_22 perf_n_23 perf_n_24 perf_n_25 perf_n_26 perf_n_27 perf_n_28 perf_n_29 perf_n_30 perf_n_31 -autobundled
netbloc @perf_n_ 1 5 2 2910 55600 3490
load netBundle @stage_valid 2 stage_valid[3] stage_valid[0] -autobundled
netbloc @stage_valid 1 5 10 2930 57290 NJ 57290 NJ 57290 5140 57030 NJ 57030 6260 57510 NJ 57510 7620J 57430 NJ 57430 8700J
load netBundle @m_axis_output_tdata_OBUF 24 m_axis_output_tdata_OBUF[23] m_axis_output_tdata_OBUF[22] m_axis_output_tdata_OBUF[21] m_axis_output_tdata_OBUF[20] m_axis_output_tdata_OBUF[19] m_axis_output_tdata_OBUF[18] m_axis_output_tdata_OBUF[17] m_axis_output_tdata_OBUF[16] m_axis_output_tdata_OBUF[15] m_axis_output_tdata_OBUF[14] m_axis_output_tdata_OBUF[13] m_axis_output_tdata_OBUF[12] m_axis_output_tdata_OBUF[11] m_axis_output_tdata_OBUF[10] m_axis_output_tdata_OBUF[9] m_axis_output_tdata_OBUF[8] m_axis_output_tdata_OBUF[7] m_axis_output_tdata_OBUF[6] m_axis_output_tdata_OBUF[5] m_axis_output_tdata_OBUF[4] m_axis_output_tdata_OBUF[3] m_axis_output_tdata_OBUF[2] m_axis_output_tdata_OBUF[1] m_axis_output_tdata_OBUF[0] -autobundled
netbloc @m_axis_output_tdata_OBUF 1 10 5 6240 57610 NJ 57610 NJ 57610 NJ 57610 8520
load netBundle @preproc_data 24 preproc_data[23] preproc_data[22] preproc_data[21] preproc_data[20] preproc_data[19] preproc_data[18] preproc_data[17] preproc_data[16] preproc_data[15] preproc_data[14] preproc_data[13] preproc_data[12] preproc_data[11] preproc_data[10] preproc_data[9] preproc_data[8] preproc_data[7] preproc_data[6] preproc_data[5] preproc_data[4] preproc_data[3] preproc_data[2] preproc_data[1] preproc_data[0] -autobundled
netbloc @preproc_data 1 9 1 5640 56810n
load netBundle @reg_file_reg_n_0_ 4 reg_file_reg_n_0_[2][3] reg_file_reg_n_0_[2][2] reg_file_reg_n_0_[2][1] reg_file_reg_n_0_[2][0] -autobundled
netbloc @reg_file_reg_n_0_ 1 4 2 1960 57080 2870J
load netBundle @reg_file_reg_n_0__1 4 reg_file_reg_n_0_[1][3] reg_file_reg_n_0_[1][2] reg_file_reg_n_0_[1][1] reg_file_reg_n_0_[1][0] -autobundled
netbloc @reg_file_reg_n_0__1 1 4 2 2140 56830 2890J
load netBundle @reg_file_reg_n_0__2 4 reg_file_reg_n_0_[3][3] reg_file_reg_n_0_[3][2] reg_file_reg_n_0_[3][1] reg_file_reg_n_0_[3][0] -autobundled
netbloc @reg_file_reg_n_0__2 1 4 2 2060 56850 2830J
load netBundle @debug_out_OBUF_1 2 debug_out_OBUF[4] debug_out_OBUF[3] -autobundled
netbloc @debug_out_OBUF_1 1 6 9 3750 56930 NJ 56930 4960 57050 NJ 57050 6380 57540 NJ 57540 NJ 57540 7870 57570 8580
load netBundle @s_axi_araddr_IBUF 5 s_axi_araddr_IBUF[7] s_axi_araddr_IBUF[6] s_axi_araddr_IBUF[4] s_axi_araddr_IBUF[3] s_axi_araddr_IBUF[2] -autobundled
netbloc @s_axi_araddr_IBUF 1 4 10 1920 56970 NJ 56970 3630 56630 4250 57110 NJ 57110 5660J 57130 NJ 57130 6940 61130 NJ 61130 7990
load netBundle @s_axi_awaddr_IBUF 5 s_axi_awaddr_IBUF[7] s_axi_awaddr_IBUF[6] s_axi_awaddr_IBUF[4] s_axi_awaddr_IBUF[3] s_axi_awaddr_IBUF[2] -autobundled
netbloc @s_axi_awaddr_IBUF 1 1 13 280 57350 720 56550 NJ 56550 NJ 56550 2830J 56280 3490 56290 4410 56500 NJ 56500 NJ 56500 NJ 56500 7100 57110 7560J 57090 7930
load netBundle @s_axi_rdata_reg 26 s_axi_rdata_reg[31] s_axi_rdata_reg[30] s_axi_rdata_reg[29] s_axi_rdata_reg[28] s_axi_rdata_reg[27] s_axi_rdata_reg[26] s_axi_rdata_reg[25] s_axi_rdata_reg[24] s_axi_rdata_reg[23] s_axi_rdata_reg[22] s_axi_rdata_reg[21] s_axi_rdata_reg[20] s_axi_rdata_reg[19] s_axi_rdata_reg[18] s_axi_rdata_reg[17] s_axi_rdata_reg[16] s_axi_rdata_reg[15] s_axi_rdata_reg[14] s_axi_rdata_reg[13] s_axi_rdata_reg[12] s_axi_rdata_reg[11] s_axi_rdata_reg[10] s_axi_rdata_reg[9] s_axi_rdata_reg[8] s_axi_rdata_reg[1] s_axi_rdata_reg[0] -autobundled
netbloc @s_axi_rdata_reg 1 7 1 4390 51810n
load netBundle @s_axi_wdata_IBUF 32 s_axi_wdata_IBUF[31] s_axi_wdata_IBUF[30] s_axi_wdata_IBUF[29] s_axi_wdata_IBUF[28] s_axi_wdata_IBUF[27] s_axi_wdata_IBUF[26] s_axi_wdata_IBUF[25] s_axi_wdata_IBUF[24] s_axi_wdata_IBUF[23] s_axi_wdata_IBUF[22] s_axi_wdata_IBUF[21] s_axi_wdata_IBUF[20] s_axi_wdata_IBUF[19] s_axi_wdata_IBUF[18] s_axi_wdata_IBUF[17] s_axi_wdata_IBUF[16] s_axi_wdata_IBUF[15] s_axi_wdata_IBUF[14] s_axi_wdata_IBUF[13] s_axi_wdata_IBUF[12] s_axi_wdata_IBUF[11] s_axi_wdata_IBUF[10] s_axi_wdata_IBUF[9] s_axi_wdata_IBUF[8] s_axi_wdata_IBUF[7] s_axi_wdata_IBUF[6] s_axi_wdata_IBUF[5] s_axi_wdata_IBUF[4] s_axi_wdata_IBUF[3] s_axi_wdata_IBUF[2] s_axi_wdata_IBUF[1] s_axi_wdata_IBUF[0] -autobundled
netbloc @s_axi_wdata_IBUF 1 3 5 1300 56570 NJ 56570 2890J 56300 3710 56210 4390
load netBundle @s_axi_rdata_reg_1 6 s_axi_rdata_reg[7] s_axi_rdata_reg[6] s_axi_rdata_reg[5] s_axi_rdata_reg[4] s_axi_rdata_reg[3] s_axi_rdata_reg[2] -autobundled
netbloc @s_axi_rdata_reg_1 1 6 1 3410 55780n
load netBundle @debug_out_OBUF_2 4 debug_out_OBUF[7] debug_out_OBUF[6] debug_out_OBUF[5] debug_out_OBUF[2] -autobundled
netbloc @debug_out_OBUF_2 1 6 9 3750 56230 4370 56460 5000 56970 5660 57070 6360 57110 7000J 57030 NJ 57030 7890 57030 8700
load netBundle @s_axi_araddr_IBUF_1 3 s_axi_araddr_IBUF[5] s_axi_araddr_IBUF[1] s_axi_araddr_IBUF[0] -autobundled
netbloc @s_axi_araddr_IBUF_1 1 4 3 1900 56630 NJ 56630 3590J
load netBundle @s_axi_awaddr_IBUF_1 3 s_axi_awaddr_IBUF[5] s_axi_awaddr_IBUF[1] s_axi_awaddr_IBUF[0] -autobundled
netbloc @s_axi_awaddr_IBUF_1 1 1 6 320 56610 NJ 56610 NJ 56610 NJ 56610 NJ 56610 3610J
load netBundle @reg_file_reg_n_0__3 8 reg_file_reg_n_0_[7][7] reg_file_reg_n_0_[7][6] reg_file_reg_n_0_[7][5] reg_file_reg_n_0_[7][4] reg_file_reg_n_0_[7][3] reg_file_reg_n_0_[7][2] reg_file_reg_n_0_[7][1] reg_file_reg_n_0_[7][0] -autobundled
netbloc @reg_file_reg_n_0__3 1 4 3 1940 55860 NJ 55860 NJ
load netBundle @reg_file_reg_n_0__4 16 reg_file_reg_n_0_[8][15] reg_file_reg_n_0_[8][14] reg_file_reg_n_0_[8][13] reg_file_reg_n_0_[8][12] reg_file_reg_n_0_[8][11] reg_file_reg_n_0_[8][10] reg_file_reg_n_0_[8][9] reg_file_reg_n_0_[8][8] reg_file_reg_n_0_[8][7] reg_file_reg_n_0_[8][6] reg_file_reg_n_0_[8][5] reg_file_reg_n_0_[8][4] reg_file_reg_n_0_[8][3] reg_file_reg_n_0_[8][2] reg_file_reg_n_0_[8][1] reg_file_reg_n_0_[8][0] -autobundled
netbloc @reg_file_reg_n_0__4 1 4 3 1800 55900 NJ 55900 3530J
load netBundle @reg_file_reg 32 reg_file_reg[15][31] reg_file_reg[15][30] reg_file_reg[15][29] reg_file_reg[15][28] reg_file_reg[15][27] reg_file_reg[15][26] reg_file_reg[15][25] reg_file_reg[15][24] reg_file_reg[15][23] reg_file_reg[15][22] reg_file_reg[15][21] reg_file_reg[15][20] reg_file_reg[15][19] reg_file_reg[15][18] reg_file_reg[15][17] reg_file_reg[15][16] reg_file_reg[15][15] reg_file_reg[15][14] reg_file_reg[15][13] reg_file_reg[15][12] reg_file_reg[15][11] reg_file_reg[15][10] reg_file_reg[15][9] reg_file_reg[15][8] reg_file_reg[15][7] reg_file_reg[15][6] reg_file_reg[15][5] reg_file_reg[15][4] reg_file_reg[15][3] reg_file_reg[15][2] reg_file_reg[15][1] reg_file_reg[15][0] -autobundled
netbloc @reg_file_reg 1 4 1 2240 22880n
load netBundle @reg_file_reg_1 32 reg_file_reg[11][31] reg_file_reg[11][30] reg_file_reg[11][29] reg_file_reg[11][28] reg_file_reg[11][27] reg_file_reg[11][26] reg_file_reg[11][25] reg_file_reg[11][24] reg_file_reg[11][23] reg_file_reg[11][22] reg_file_reg[11][21] reg_file_reg[11][20] reg_file_reg[11][19] reg_file_reg[11][18] reg_file_reg[11][17] reg_file_reg[11][16] reg_file_reg[11][15] reg_file_reg[11][14] reg_file_reg[11][13] reg_file_reg[11][12] reg_file_reg[11][11] reg_file_reg[11][10] reg_file_reg[11][9] reg_file_reg[11][8] reg_file_reg[11][7] reg_file_reg[11][6] reg_file_reg[11][5] reg_file_reg[11][4] reg_file_reg[11][3] reg_file_reg[11][2] reg_file_reg[11][1] reg_file_reg[11][0] -autobundled
netbloc @reg_file_reg_1 1 4 1 2280 14480n
load netBundle @reg_file_reg_2 32 reg_file_reg[10][31] reg_file_reg[10][30] reg_file_reg[10][29] reg_file_reg[10][28] reg_file_reg[10][27] reg_file_reg[10][26] reg_file_reg[10][25] reg_file_reg[10][24] reg_file_reg[10][23] reg_file_reg[10][22] reg_file_reg[10][21] reg_file_reg[10][20] reg_file_reg[10][19] reg_file_reg[10][18] reg_file_reg[10][17] reg_file_reg[10][16] reg_file_reg[10][15] reg_file_reg[10][14] reg_file_reg[10][13] reg_file_reg[10][12] reg_file_reg[10][11] reg_file_reg[10][10] reg_file_reg[10][9] reg_file_reg[10][8] reg_file_reg[10][7] reg_file_reg[10][6] reg_file_reg[10][5] reg_file_reg[10][4] reg_file_reg[10][3] reg_file_reg[10][2] reg_file_reg[10][1] reg_file_reg[10][0] -autobundled
netbloc @reg_file_reg_2 1 4 1 2160 27680n
load netBundle @reg_file_reg_n_0__5 28 reg_file_reg_n_0_[1][31] reg_file_reg_n_0_[1][30] reg_file_reg_n_0_[1][29] reg_file_reg_n_0_[1][28] reg_file_reg_n_0_[1][27] reg_file_reg_n_0_[1][26] reg_file_reg_n_0_[1][25] reg_file_reg_n_0_[1][24] reg_file_reg_n_0_[1][23] reg_file_reg_n_0_[1][22] reg_file_reg_n_0_[1][21] reg_file_reg_n_0_[1][20] reg_file_reg_n_0_[1][19] reg_file_reg_n_0_[1][18] reg_file_reg_n_0_[1][17] reg_file_reg_n_0_[1][16] reg_file_reg_n_0_[1][15] reg_file_reg_n_0_[1][14] reg_file_reg_n_0_[1][13] reg_file_reg_n_0_[1][12] reg_file_reg_n_0_[1][11] reg_file_reg_n_0_[1][10] reg_file_reg_n_0_[1][9] reg_file_reg_n_0_[1][8] reg_file_reg_n_0_[1][7] reg_file_reg_n_0_[1][6] reg_file_reg_n_0_[1][5] reg_file_reg_n_0_[1][4] -autobundled
netbloc @reg_file_reg_n_0__5 1 4 1 2220 680n
load netBundle @reg_file_reg_n_0__6 32 reg_file_reg_n_0_[0][31] reg_file_reg_n_0_[0][30] reg_file_reg_n_0_[0][29] reg_file_reg_n_0_[0][28] reg_file_reg_n_0_[0][27] reg_file_reg_n_0_[0][26] reg_file_reg_n_0_[0][25] reg_file_reg_n_0_[0][24] reg_file_reg_n_0_[0][23] reg_file_reg_n_0_[0][22] reg_file_reg_n_0_[0][21] reg_file_reg_n_0_[0][20] reg_file_reg_n_0_[0][19] reg_file_reg_n_0_[0][18] reg_file_reg_n_0_[0][17] reg_file_reg_n_0_[0][16] reg_file_reg_n_0_[0][15] reg_file_reg_n_0_[0][14] reg_file_reg_n_0_[0][13] reg_file_reg_n_0_[0][12] reg_file_reg_n_0_[0][11] reg_file_reg_n_0_[0][10] reg_file_reg_n_0_[0][9] reg_file_reg_n_0_[0][8] reg_file_reg_n_0_[0][7] reg_file_reg_n_0_[0][6] reg_file_reg_n_0_[0][5] reg_file_reg_n_0_[0][4] reg_file_reg_n_0_[0][3] reg_file_reg_n_0_[0][2] reg_file_reg_n_0_[0][1] reg_file_reg_n_0_[0][0] -autobundled
netbloc @reg_file_reg_n_0__6 1 4 7 2080 57310 NJ 57310 NJ 57310 NJ 57310 5120 56930 5820 56950 6320J
load netBundle @reg_file_reg_3 32 reg_file_reg[9][31] reg_file_reg[9][30] reg_file_reg[9][29] reg_file_reg[9][28] reg_file_reg[9][27] reg_file_reg[9][26] reg_file_reg[9][25] reg_file_reg[9][24] reg_file_reg[9][23] reg_file_reg[9][22] reg_file_reg[9][21] reg_file_reg[9][20] reg_file_reg[9][19] reg_file_reg[9][18] reg_file_reg[9][17] reg_file_reg[9][16] reg_file_reg[9][15] reg_file_reg[9][14] reg_file_reg[9][13] reg_file_reg[9][12] reg_file_reg[9][11] reg_file_reg[9][10] reg_file_reg[9][9] reg_file_reg[9][8] reg_file_reg[9][7] reg_file_reg[9][6] reg_file_reg[9][5] reg_file_reg[9][4] reg_file_reg[9][3] reg_file_reg[9][2] reg_file_reg[9][1] reg_file_reg[9][0] -autobundled
netbloc @reg_file_reg_3 1 4 1 2260 9680n
load netBundle @reg_file_reg_n_0__7 16 reg_file_reg_n_0_[8][31] reg_file_reg_n_0_[8][30] reg_file_reg_n_0_[8][29] reg_file_reg_n_0_[8][28] reg_file_reg_n_0_[8][27] reg_file_reg_n_0_[8][26] reg_file_reg_n_0_[8][25] reg_file_reg_n_0_[8][24] reg_file_reg_n_0_[8][23] reg_file_reg_n_0_[8][22] reg_file_reg_n_0_[8][21] reg_file_reg_n_0_[8][20] reg_file_reg_n_0_[8][19] reg_file_reg_n_0_[8][18] reg_file_reg_n_0_[8][17] reg_file_reg_n_0_[8][16] -autobundled
netbloc @reg_file_reg_n_0__7 1 4 1 1760 53260n
load netBundle @reg_file_reg_n_0__8 24 reg_file_reg_n_0_[7][31] reg_file_reg_n_0_[7][30] reg_file_reg_n_0_[7][29] reg_file_reg_n_0_[7][28] reg_file_reg_n_0_[7][27] reg_file_reg_n_0_[7][26] reg_file_reg_n_0_[7][25] reg_file_reg_n_0_[7][24] reg_file_reg_n_0_[7][23] reg_file_reg_n_0_[7][22] reg_file_reg_n_0_[7][21] reg_file_reg_n_0_[7][20] reg_file_reg_n_0_[7][19] reg_file_reg_n_0_[7][18] reg_file_reg_n_0_[7][17] reg_file_reg_n_0_[7][16] reg_file_reg_n_0_[7][15] reg_file_reg_n_0_[7][14] reg_file_reg_n_0_[7][13] reg_file_reg_n_0_[7][12] reg_file_reg_n_0_[7][11] reg_file_reg_n_0_[7][10] reg_file_reg_n_0_[7][9] reg_file_reg_n_0_[7][8] -autobundled
netbloc @reg_file_reg_n_0__8 1 4 1 2080 38480n
load netBundle @reg_file_reg_n_0__9 32 reg_file_reg_n_0_[6][31] reg_file_reg_n_0_[6][30] reg_file_reg_n_0_[6][29] reg_file_reg_n_0_[6][28] reg_file_reg_n_0_[6][27] reg_file_reg_n_0_[6][26] reg_file_reg_n_0_[6][25] reg_file_reg_n_0_[6][24] reg_file_reg_n_0_[6][23] reg_file_reg_n_0_[6][22] reg_file_reg_n_0_[6][21] reg_file_reg_n_0_[6][20] reg_file_reg_n_0_[6][19] reg_file_reg_n_0_[6][18] reg_file_reg_n_0_[6][17] reg_file_reg_n_0_[6][16] reg_file_reg_n_0_[6][15] reg_file_reg_n_0_[6][14] reg_file_reg_n_0_[6][13] reg_file_reg_n_0_[6][12] reg_file_reg_n_0_[6][11] reg_file_reg_n_0_[6][10] reg_file_reg_n_0_[6][9] reg_file_reg_n_0_[6][8] reg_file_reg_n_0_[6][7] reg_file_reg_n_0_[6][6] reg_file_reg_n_0_[6][5] reg_file_reg_n_0_[6][4] reg_file_reg_n_0_[6][3] reg_file_reg_n_0_[6][2] reg_file_reg_n_0_[6][1] reg_file_reg_n_0_[6][0] -autobundled
netbloc @reg_file_reg_n_0__9 1 4 3 2020 55880 NJ 55880 3730J
load netBundle @reg_file_reg_n_0__10 32 reg_file_reg_n_0_[5][31] reg_file_reg_n_0_[5][30] reg_file_reg_n_0_[5][29] reg_file_reg_n_0_[5][28] reg_file_reg_n_0_[5][27] reg_file_reg_n_0_[5][26] reg_file_reg_n_0_[5][25] reg_file_reg_n_0_[5][24] reg_file_reg_n_0_[5][23] reg_file_reg_n_0_[5][22] reg_file_reg_n_0_[5][21] reg_file_reg_n_0_[5][20] reg_file_reg_n_0_[5][19] reg_file_reg_n_0_[5][18] reg_file_reg_n_0_[5][17] reg_file_reg_n_0_[5][16] reg_file_reg_n_0_[5][15] reg_file_reg_n_0_[5][14] reg_file_reg_n_0_[5][13] reg_file_reg_n_0_[5][12] reg_file_reg_n_0_[5][11] reg_file_reg_n_0_[5][10] reg_file_reg_n_0_[5][9] reg_file_reg_n_0_[5][8] reg_file_reg_n_0_[5][7] reg_file_reg_n_0_[5][6] reg_file_reg_n_0_[5][5] reg_file_reg_n_0_[5][4] reg_file_reg_n_0_[5][3] reg_file_reg_n_0_[5][2] reg_file_reg_n_0_[5][1] reg_file_reg_n_0_[5][0] -autobundled
netbloc @reg_file_reg_n_0__10 1 4 1 2120 33680n
load netBundle @reg_file_reg_n_0__11 32 reg_file_reg_n_0_[4][31] reg_file_reg_n_0_[4][30] reg_file_reg_n_0_[4][29] reg_file_reg_n_0_[4][28] reg_file_reg_n_0_[4][27] reg_file_reg_n_0_[4][26] reg_file_reg_n_0_[4][25] reg_file_reg_n_0_[4][24] reg_file_reg_n_0_[4][23] reg_file_reg_n_0_[4][22] reg_file_reg_n_0_[4][21] reg_file_reg_n_0_[4][20] reg_file_reg_n_0_[4][19] reg_file_reg_n_0_[4][18] reg_file_reg_n_0_[4][17] reg_file_reg_n_0_[4][16] reg_file_reg_n_0_[4][15] reg_file_reg_n_0_[4][14] reg_file_reg_n_0_[4][13] reg_file_reg_n_0_[4][12] reg_file_reg_n_0_[4][11] reg_file_reg_n_0_[4][10] reg_file_reg_n_0_[4][9] reg_file_reg_n_0_[4][8] reg_file_reg_n_0_[4][7] reg_file_reg_n_0_[4][6] reg_file_reg_n_0_[4][5] reg_file_reg_n_0_[4][4] reg_file_reg_n_0_[4][3] reg_file_reg_n_0_[4][2] reg_file_reg_n_0_[4][1] reg_file_reg_n_0_[4][0] -autobundled
netbloc @reg_file_reg_n_0__11 1 4 1 2040 53340n
load netBundle @reg_file_reg_n_0__12 28 reg_file_reg_n_0_[3][31] reg_file_reg_n_0_[3][30] reg_file_reg_n_0_[3][29] reg_file_reg_n_0_[3][28] reg_file_reg_n_0_[3][27] reg_file_reg_n_0_[3][26] reg_file_reg_n_0_[3][25] reg_file_reg_n_0_[3][24] reg_file_reg_n_0_[3][23] reg_file_reg_n_0_[3][22] reg_file_reg_n_0_[3][21] reg_file_reg_n_0_[3][20] reg_file_reg_n_0_[3][19] reg_file_reg_n_0_[3][18] reg_file_reg_n_0_[3][17] reg_file_reg_n_0_[3][16] reg_file_reg_n_0_[3][15] reg_file_reg_n_0_[3][14] reg_file_reg_n_0_[3][13] reg_file_reg_n_0_[3][12] reg_file_reg_n_0_[3][11] reg_file_reg_n_0_[3][10] reg_file_reg_n_0_[3][9] reg_file_reg_n_0_[3][8] reg_file_reg_n_0_[3][7] reg_file_reg_n_0_[3][6] reg_file_reg_n_0_[3][5] reg_file_reg_n_0_[3][4] -autobundled
netbloc @reg_file_reg_n_0__12 1 4 1 2180 3080n
load netBundle @reg_file_reg_n_0__13 28 reg_file_reg_n_0_[2][31] reg_file_reg_n_0_[2][30] reg_file_reg_n_0_[2][29] reg_file_reg_n_0_[2][28] reg_file_reg_n_0_[2][27] reg_file_reg_n_0_[2][26] reg_file_reg_n_0_[2][25] reg_file_reg_n_0_[2][24] reg_file_reg_n_0_[2][23] reg_file_reg_n_0_[2][22] reg_file_reg_n_0_[2][21] reg_file_reg_n_0_[2][20] reg_file_reg_n_0_[2][19] reg_file_reg_n_0_[2][18] reg_file_reg_n_0_[2][17] reg_file_reg_n_0_[2][16] reg_file_reg_n_0_[2][15] reg_file_reg_n_0_[2][14] reg_file_reg_n_0_[2][13] reg_file_reg_n_0_[2][12] reg_file_reg_n_0_[2][11] reg_file_reg_n_0_[2][10] reg_file_reg_n_0_[2][9] reg_file_reg_n_0_[2][8] reg_file_reg_n_0_[2][7] reg_file_reg_n_0_[2][6] reg_file_reg_n_0_[2][5] reg_file_reg_n_0_[2][4] -autobundled
netbloc @reg_file_reg_n_0__13 1 4 1 2000 53380n
load netBundle @reg_file_reg_4 32 reg_file_reg[14][31] reg_file_reg[14][30] reg_file_reg[14][29] reg_file_reg[14][28] reg_file_reg[14][27] reg_file_reg[14][26] reg_file_reg[14][25] reg_file_reg[14][24] reg_file_reg[14][23] reg_file_reg[14][22] reg_file_reg[14][21] reg_file_reg[14][20] reg_file_reg[14][19] reg_file_reg[14][18] reg_file_reg[14][17] reg_file_reg[14][16] reg_file_reg[14][15] reg_file_reg[14][14] reg_file_reg[14][13] reg_file_reg[14][12] reg_file_reg[14][11] reg_file_reg[14][10] reg_file_reg[14][9] reg_file_reg[14][8] reg_file_reg[14][7] reg_file_reg[14][6] reg_file_reg[14][5] reg_file_reg[14][4] reg_file_reg[14][3] reg_file_reg[14][2] reg_file_reg[14][1] reg_file_reg[14][0] -autobundled
netbloc @reg_file_reg_4 1 4 1 1980 42080n
load netBundle @reg_file_reg_5 32 reg_file_reg[13][31] reg_file_reg[13][30] reg_file_reg[13][29] reg_file_reg[13][28] reg_file_reg[13][27] reg_file_reg[13][26] reg_file_reg[13][25] reg_file_reg[13][24] reg_file_reg[13][23] reg_file_reg[13][22] reg_file_reg[13][21] reg_file_reg[13][20] reg_file_reg[13][19] reg_file_reg[13][18] reg_file_reg[13][17] reg_file_reg[13][16] reg_file_reg[13][15] reg_file_reg[13][14] reg_file_reg[13][13] reg_file_reg[13][12] reg_file_reg[13][11] reg_file_reg[13][10] reg_file_reg[13][9] reg_file_reg[13][8] reg_file_reg[13][7] reg_file_reg[13][6] reg_file_reg[13][5] reg_file_reg[13][4] reg_file_reg[13][3] reg_file_reg[13][2] reg_file_reg[13][1] reg_file_reg[13][0] -autobundled
netbloc @reg_file_reg_5 1 4 1 2100 19280n
load netBundle @reg_file_reg_6 32 reg_file_reg[12][31] reg_file_reg[12][30] reg_file_reg[12][29] reg_file_reg[12][28] reg_file_reg[12][27] reg_file_reg[12][26] reg_file_reg[12][25] reg_file_reg[12][24] reg_file_reg[12][23] reg_file_reg[12][22] reg_file_reg[12][21] reg_file_reg[12][20] reg_file_reg[12][19] reg_file_reg[12][18] reg_file_reg[12][17] reg_file_reg[12][16] reg_file_reg[12][15] reg_file_reg[12][14] reg_file_reg[12][13] reg_file_reg[12][12] reg_file_reg[12][11] reg_file_reg[12][10] reg_file_reg[12][9] reg_file_reg[12][8] reg_file_reg[12][7] reg_file_reg[12][6] reg_file_reg[12][5] reg_file_reg[12][4] reg_file_reg[12][3] reg_file_reg[12][2] reg_file_reg[12][1] reg_file_reg[12][0] -autobundled
netbloc @reg_file_reg_6 1 4 1 1820 48080n
load netBundle @s_axis_input_tdata_IBUF 24 s_axis_input_tdata_IBUF[23] s_axis_input_tdata_IBUF[22] s_axis_input_tdata_IBUF[21] s_axis_input_tdata_IBUF[20] s_axis_input_tdata_IBUF[19] s_axis_input_tdata_IBUF[18] s_axis_input_tdata_IBUF[17] s_axis_input_tdata_IBUF[16] s_axis_input_tdata_IBUF[15] s_axis_input_tdata_IBUF[14] s_axis_input_tdata_IBUF[13] s_axis_input_tdata_IBUF[12] s_axis_input_tdata_IBUF[11] s_axis_input_tdata_IBUF[10] s_axis_input_tdata_IBUF[9] s_axis_input_tdata_IBUF[8] s_axis_input_tdata_IBUF[7] s_axis_input_tdata_IBUF[6] s_axis_input_tdata_IBUF[5] s_axis_input_tdata_IBUF[4] s_axis_input_tdata_IBUF[3] s_axis_input_tdata_IBUF[2] s_axis_input_tdata_IBUF[1] s_axis_input_tdata_IBUF[0] -autobundled
netbloc @s_axis_input_tdata_IBUF 1 8 1 5020 54710n
levelinfo -pg 1 0 60 400 920 1530 2520 3190 3960 4700 5380 6040 6650 7280 7700 8220 8740 9060
pagesize -pg 1 -db -bbox -sgen -210 0 9290 78010
show
fullfit
#
# initialize ictrl to current module ai_accelerator_top work:ai_accelerator_top:NOFILE
ictrl init topinfo |
