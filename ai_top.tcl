# ai_top.tcl
set_msg_config -suppress -severity {ERROR}
set_msg_config -suppress -severity {WARNING}
set_msg_config -suppress -severity {CRITICAL WARNING}
set_msg_config -suppress -severity {INFO}
create_project -force AI_ACCELERATOR AI_ACCELERATOR -part xcvp1902-vsva2785-2MP-e-S
set_property source_mgmt_mode All [current_project]
add_files ai_accelerator_top.sv weight_loader.sv convolution_engine.sv fc_layer.sv clock_reset_manager.sv image_preprocessing.sv dataflow_controller.sv activation_function.sv pooling_unit.sv performance_monitor.sv interrupt_controller.sv pipeline_controller.sv
add_files -fileset sim_1 ai_accelerator_tb.sv
set_property top ai_accelerator_top [current_fileset]
set_property top ai_accelerator_tb [get_filesets sim_1]
set_property -name {xsim.compile.xvlog.more_options} -value {-L uvm} -objects [get_filesets sim_1]
synth_design -top ai_accelerator_top -part xcvp1902-vsva2785-2MP-e-S
opt_design
place_design
route_design
write_checkpoint -force post_route.dcp
report_timing_summary -file timing_summary.rpt -quiet
report_utilization -file utilization.rpt -quiet
report_power -file power.rpt -quiet
launch_simulation -quiet
set_property display_limit 100000 [current_wave_config]
add_wave /ai_accelerator_tb/clk
add_wave /ai_accelerator_tb/rst_n
add_wave /ai_accelerator_tb/dut/s_axis_input_tvalid
add_wave /ai_accelerator_tb/dut/s_axis_input_tdata
add_wave /ai_accelerator_tb/dut/s_axis_input_tready
add_wave /ai_accelerator_tb/dut/m_axis_output_tvalid
add_wave /ai_accelerator_tb/dut/m_axis_output_tdata
add_wave /ai_accelerator_tb/dut/m_axis_output_tready
add_wave /ai_accelerator_tb/dut/weight_mem[0:99]
add_wave /ai_accelerator_tb/dut/valid_out
add_wave /ai_accelerator_tb/dut/done
add_wave /ai_accelerator_tb/dut/error
write_waveform -file waveform.wcfg
