`timescale 1ns/1ps
`include "uvm_macros.svh"

import uvm_pkg::*;

// Interface for ai_accelerator_top
interface ai_accelerator_if (
    input logic clk,
    input logic rst_n
);
    logic                       s_axis_input_tvalid;
    logic                       s_axis_input_tready;
    logic [23:0]                s_axis_input_tdata; // 3*DATA_WIDTH=24
    logic                       s_axis_input_tlast;
    logic                       m_axis_output_tvalid;
    logic                       m_axis_output_tready;
    logic [23:0]                m_axis_output_tdata;
    logic                       m_axis_output_tlast;
    logic                       s_axi_awvalid;
    logic                       s_axi_awready;
    logic [31:0]                s_axi_awaddr;
    logic                       s_axi_wvalid;
    logic                       s_axi_wready;
    logic [31:0]                s_axi_wdata;
    logic [3:0]                 s_axi_wstrb;
    logic                       s_axi_bvalid;
    logic                       s_axi_bready;
    logic [1:0]                 s_axi_bresp;
    logic                       s_axi_arvalid;
    logic                       s_axi_arready;
    logic [31:0]                s_axi_araddr;
    logic                       s_axi_rvalid;
    logic                       s_axi_rready;
    logic [31:0]                s_axi_rdata;
    logic [1:0]                 s_axi_rresp;
    logic                       s_kernel_tvalid;
    logic                       s_kernel_tready;
    logic [599:0]               s_kernel_tdata;
    logic                       m_axi_arvalid;
    logic                       m_axi_arready;
    logic [31:0]                m_axi_araddr;
    logic [7:0]                 m_axi_arlen;
    logic                       m_axi_rvalid;
    logic                       m_axi_rready;
    logic [7:0]                 m_axi_rdata;
    logic                       m_axi_awvalid;
    logic                       m_axi_awready;
    logic [31:0]                m_axi_awaddr;
    logic [7:0]                 m_axi_awlen;
    logic                       m_axi_wvalid;
    logic                       m_axi_wready;
    logic [7:0]                 m_axi_wdata;
    logic                       axi_valid_out;
    logic [7:0]                 processed_data;
    logic                       valid_out;
    logic                       done;
    logic [7:0]                 debug_out;
    logic                       error;

    clocking cb @(posedge clk);
        default input #1ns output #1ns;
        output s_axis_input_tvalid, s_axis_input_tdata, s_axis_input_tlast;
        input  s_axis_input_tready;
        input  m_axis_output_tvalid, m_axis_output_tdata, m_axis_output_tlast;
        output m_axis_output_tready;
        output s_axi_awvalid, s_axi_awaddr, s_axi_wvalid, s_axi_wdata, s_axi_wstrb;
        input  s_axi_awready, s_axi_wready, s_axi_bvalid, s_axi_bresp;
        output s_axi_bready;
        output s_axi_arvalid, s_axi_araddr;
        input  s_axi_arready, s_axi_rvalid, s_axi_rdata, s_axi_rresp;
        output s_axi_rready;
        output s_kernel_tvalid, s_kernel_tdata;
        input  s_kernel_tready;
        output m_axi_arvalid, m_axi_araddr, m_axi_arlen;
        input  m_axi_arready;
        output m_axi_rvalid, m_axi_rdata;
        output m_axi_rready; // Fixed: output (testbench drives)
        output m_axi_awvalid, m_axi_awaddr, m_axi_awlen, m_axi_wvalid, m_axi_wdata;
        input  m_axi_awready, m_axi_wready;
        input  axi_valid_out, processed_data, valid_out, done, debug_out, error;
    endclocking

    modport dut (
        input  clk, rst_n,
        input  s_axis_input_tvalid, s_axis_input_tdata, s_axis_input_tlast,
        output s_axis_input_tready,
        output m_axis_output_tvalid, m_axis_output_tdata, m_axis_output_tlast,
        input  m_axis_output_tready,
        input  s_axi_awvalid, s_axi_awaddr, s_axi_wvalid, s_axi_wdata, s_axi_wstrb,
        output s_axi_awready, s_axi_wready, s_axi_bvalid, s_axi_bresp,
        input  s_axi_bready,
        input  s_axi_arvalid, s_axi_araddr,
        output s_axi_arready, s_axi_rvalid, s_axi_rdata, s_axi_rresp,
        input  s_axi_rready,
        input  s_kernel_tvalid, s_kernel_tdata,
        output s_kernel_tready,
        output m_axi_arvalid, m_axi_araddr, m_axi_arlen,
        input  m_axi_arready, m_axi_rvalid, m_axi_rdata,
        output m_axi_rready,
        output m_axi_awvalid, m_axi_awaddr, m_axi_awlen, m_axi_wvalid, m_axi_wdata,
        input  m_axi_awready, m_axi_wready,
        output axi_valid_out, processed_data, valid_out, done, debug_out, error
    );
endinterface

// Transaction class
class ai_accelerator_trans extends uvm_sequence_item;
    rand bit [23:0] s_axis_input_tdata; // 3*8-bit channels
    rand bit [599:0] s_kernel_tdata;    // 3*25*8-bit kernel
    rand bit [31:0] s_axi_wdata;        // AXI-Lite write data
    rand bit [31:0] s_axi_awaddr;       // AXI-Lite write address
    rand bit [31:0] s_axi_araddr;       // AXI-Lite read address
    rand bit [7:0]  m_axi_rdata;        // AXI weight data
    bit [23:0] m_axis_output_tdata;     // Expected/received output

    `uvm_object_utils_begin(ai_accelerator_trans)
        `uvm_field_int(s_axis_input_tdata, UVM_ALL_ON)
        `uvm_field_int(s_kernel_tdata, UVM_ALL_ON)
        `uvm_field_int(s_axi_wdata, UVM_ALL_ON)
        `uvm_field_int(s_axi_awaddr, UVM_ALL_ON)
        `uvm_field_int(s_axi_araddr, UVM_ALL_ON)
        `uvm_field_int(m_axi_rdata, UVM_ALL_ON)
        `uvm_field_int(m_axis_output_tdata, UVM_ALL_ON)
    `uvm_object_utils_end

    function new(string name = "ai_accelerator_trans");
        super.new(name);
    endfunction
endclass

// Sequence for basic data flow
class ai_accelerator_seq extends uvm_sequence #(ai_accelerator_trans);
    `uvm_object_utils(ai_accelerator_seq)

    function new(string name = "ai_accelerator_seq");
        super.new(name);
    endfunction

    task body();
        ai_accelerator_trans trans;
        // Reset sequence
        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axis_input_tdata = '0;
        trans.s_kernel_tdata = '0;
        trans.s_axi_wdata = '0;
        trans.s_axi_awaddr = '0;
        trans.m_axi_rdata = '0;
        finish_item(trans);

        // Configure registers (enable preprocessing, set kernel size=3, stride=1, padding=1, activation=ReLU)
        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h00; // reg_file[0] = enable
        trans.s_axi_wdata = 32'h1;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h04; // reg_file[1] = kernel_size=3
        trans.s_axi_wdata = 32'h3;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h08; // reg_file[2] = stride=1
        trans.s_axi_wdata = 32'h1;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h0C; // reg_file[3] = padding=1
        trans.s_axi_wdata = 32'h1;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h10; // reg_file[4] = activation_mode=ReLU (0)
        trans.s_axi_wdata = 32'h0;
        finish_item(trans);

        // Configure weight loading (reg_file[6,7,8])
        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h18; // reg_file[6] = weight_cfg_valid
        trans.s_axi_wdata = 32'h1;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h1C; // reg_file[7] = weight_cfg_addr
        trans.s_axi_wdata = 32'h0;
        finish_item(trans);

        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_axi_awaddr = 32'h20; // reg_file[8] = weight_cfg_length
        trans.s_axi_wdata = 32'd128; // Load 128 weights
        finish_item(trans);

        // Load weights (128 weights for fc_layer)
        repeat (128) begin
            trans = ai_accelerator_trans::type_id::create("trans");
            start_item(trans);
            trans.m_axi_rdata = $urandom_range(1, 255); // Random non-zero weights
            finish_item(trans);
        end

        // Send input image data (64x64x3, simplified to 10 pixels)
        repeat (10) begin
            trans = ai_accelerator_trans::type_id::create("trans");
            start_item(trans);
            trans.s_axis_input_tdata = {$urandom_range(0, 255), $urandom_range(0, 255), $urandom_range(0, 255)};
            finish_item(trans);
        end

        // Send kernel data (3x5x5 kernels)
        trans = ai_accelerator_trans::type_id::create("trans");
        start_item(trans);
        trans.s_kernel_tdata = {600{$urandom_range(1, 255)}}; // Random kernel
        finish_item(trans);
    endtask
endclass

// Driver
class ai_accelerator_driver extends uvm_driver #(ai_accelerator_trans);
    `uvm_component_utils(ai_accelerator_driver)
    virtual ai_accelerator_if vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(virtual ai_accelerator_if)::get(this, "", "vif", vif))
            `uvm_fatal("DRV", "Interface not found")
    endfunction

    task run_phase(uvm_phase phase);
        // Initialize signals
        vif.cb.s_axis_input_tvalid <= 0;
        vif.cb.s_axis_input_tdata <= '0;
        vif.cb.s_axis_input_tlast <= 0;
        vif.cb.m_axis_output_tready <= 1; // Always ready
        vif.cb.s_axi_awvalid <= 0;
        vif.cb.s_axi_wvalid <= 0;
        vif.cb.s_axi_wstrb <= 4'hF;
        vif.cb.s_axi_bready <= 1;
        vif.cb.s_axi_arvalid <= 0;
        vif.cb.s_axi_rready <= 1;
        vif.cb.s_kernel_tvalid <= 0;
        vif.cb.s_kernel_tdata <= '0;
        vif.cb.m_axi_arvalid <= 0;
        vif.cb.m_axi_rready <= 1; // Always ready
        vif.cb.m_axi_awvalid <= 0;
        vif.cb.m_axi_wvalid <= 0;

        forever begin
            ai_accelerator_trans trans;
            seq_item_port.get_next_item(trans);

            // Drive AXI-Stream input
            if (trans.s_axis_input_tdata !== 'X) begin
                @(vif.cb);
                vif.cb.s_axis_input_tvalid <= 1;
                vif.cb.s_axis_input_tdata <= trans.s_axis_input_tdata;
                wait (vif.cb.s_axis_input_tready);
                @(vif.cb);
                vif.cb.s_axis_input_tvalid <= 0;
            end

            // Drive AXI-Lite write
            if (trans.s_axi_awaddr !== 'X) begin
                @(vif.cb);
                vif.cb.s_axi_awvalid <= 1;
                vif.cb.s_axi_awaddr <= trans.s_axi_awaddr;
                vif.cb.s_axi_wvalid <= 1;
                vif.cb.s_axi_wdata <= trans.s_axi_wdata;
                wait (vif.cb.s_axi_awready && vif.cb.s_axi_wready);
                @(vif.cb);
                vif.cb.s_axi_awvalid <= 0;
                vif.cb.s_axi_wvalid <= 0;
                wait (vif.cb.s_axi_bvalid);
                @(vif.cb);
            end

            // Drive kernel data
            if (trans.s_kernel_tdata !== 'X) begin
                @(vif.cb);
                vif.cb.s_kernel_tvalid <= 1;
                vif.cb.s_kernel_tdata <= trans.s_kernel_tdata;
                wait (vif.cb.s_kernel_tready);
                @(vif.cb);
                vif.cb.s_kernel_tvalid <= 0;
            end

            // Drive AXI weight data
            if (trans.m_axi_rdata !== 'X) begin
                @(vif.cb);
                vif.cb.m_axi_rvalid <= 1;
                vif.cb.m_axi_rdata <= trans.m_axi_rdata;
                @(vif.cb); // Simplified: no wait for m_axi_rready
                vif.cb.m_axi_rvalid <= 0;
            end

            seq_item_port.item_done();
        end
    endtask
endclass

// Monitor
class ai_accelerator_monitor extends uvm_monitor;
    `uvm_component_utils(ai_accelerator_monitor)
    virtual ai_accelerator_if vif;
    uvm_analysis_port #(ai_accelerator_trans) ap;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        ap = new("ap", this);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(virtual ai_accelerator_if)::get(this, "", "vif", vif))
            `uvm_fatal("MON", "Interface not found")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            ai_accelerator_trans trans = ai_accelerator_trans::type_id::create("trans");
            @(vif.cb);
            if (vif.cb.m_axis_output_tvalid) begin // tready check removed
                trans.m_axis_output_tdata = vif.cb.m_axis_output_tdata;
                ap.write(trans);
                `uvm_info("MON", $sformatf("Output data: %h", trans.m_axis_output_tdata), UVM_MEDIUM)
            end
            if (vif.cb.error) begin
                `uvm_error("MON", "Error signal asserted")
            end
        end
    endtask
endclass

// Scoreboard
class ai_accelerator_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(ai_accelerator_scoreboard)
    uvm_analysis_imp #(ai_accelerator_trans, ai_accelerator_scoreboard) ap;
    int pass_count, fail_count;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        ap = new("ap", this);
        pass_count = 0;
        fail_count = 0;
    endfunction

    function void write(ai_accelerator_trans trans);
        // Simple check: output data should be non-zero
        if (trans.m_axis_output_tdata !== '0) begin
            `uvm_info("SCB", $sformatf("PASS: Output data %h received", trans.m_axis_output_tdata), UVM_LOW)
            pass_count++;
        end else begin
            `uvm_error("SCB", $sformatf("FAIL: Zero output data %h", trans.m_axis_output_tdata))
            fail_count++;
        end
    endfunction

    function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("SCB", $sformatf("Test Summary: %0d PASS, %0d FAIL", pass_count, fail_count), UVM_NONE)
    endfunction
endclass

// Environment
class ai_accelerator_env extends uvm_env;
    `uvm_component_utils(ai_accelerator_env)
    ai_accelerator_driver driver;
    ai_accelerator_monitor monitor;
    ai_accelerator_scoreboard scoreboard;
    uvm_sequencer #(ai_accelerator_trans) sequencer;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        driver = ai_accelerator_driver::type_id::create("driver", this);
        monitor = ai_accelerator_monitor::type_id::create("monitor", this);
        scoreboard = ai_accelerator_scoreboard::type_id::create("scoreboard", this);
        sequencer = uvm_sequencer#(ai_accelerator_trans)::type_id::create("sequencer", this);
    endfunction

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        monitor.ap.connect(scoreboard.ap);
        driver.seq_item_port.connect(sequencer.seq_item_export);
    endfunction
endclass

// Test
class ai_accelerator_test extends uvm_test;
    `uvm_component_utils(ai_accelerator_test)
    ai_accelerator_env env;
    ai_accelerator_seq seq;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = ai_accelerator_env::type_id::create("env", this);
        seq = ai_accelerator_seq::type_id::create("seq");
    endfunction

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        seq.start(env.sequencer);
        #1000ns; // Wait for output
        phase.drop_objection(this);
    endtask
endclass

// Top-level testbench
module ai_accelerator_tb;
    logic clk, rst_n;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz
    end

    // Reset generation
    initial begin
        rst_n = 0;
        #20 rst_n = 1;
    end

    // Interface and DUT instantiation
    ai_accelerator_if vif (.clk(clk), .rst_n(rst_n));
    ai_accelerator_top dut (
        .clk(vif.clk),
        .rst_n(vif.rst_n),
        .s_axis_input_tvalid(vif.s_axis_input_tvalid),
        .s_axis_input_tready(vif.s_axis_input_tready),
        .s_axis_input_tdata(vif.s_axis_input_tdata),
        .s_axis_input_tlast(vif.s_axis_input_tlast),
        .m_axis_output_tvalid(vif.m_axis_output_tvalid),
        .m_axis_output_tready(vif.m_axis_output_tready),
        .m_axis_output_tdata(vif.m_axis_output_tdata),
        .m_axis_output_tlast(vif.m_axis_output_tlast),
        .s_axi_awvalid(vif.s_axi_awvalid),
        .s_axi_awready(vif.s_axi_awready),
        .s_axi_awaddr(vif.s_axi_awaddr),
        .s_axi_wvalid(vif.s_axi_wvalid),
        .s_axi_wready(vif.s_axi_wready),
        .s_axi_wdata(vif.s_axi_wdata),
        .s_axi_wstrb(vif.s_axi_wstrb),
        .s_axi_bvalid(vif.s_axi_bvalid),
        .s_axi_bready(vif.s_axi_bready),
        .s_axi_bresp(vif.s_axi_bresp),
        .s_axi_arvalid(vif.s_axi_arvalid),
        .s_axi_arready(vif.s_axi_arready),
        .s_axi_araddr(vif.s_axi_araddr),
        .s_axi_rvalid(vif.s_axi_rvalid),
        .s_axi_rready(vif.s_axi_rready),
        .s_axi_rdata(vif.s_axi_rdata),
        .s_axi_rresp(vif.s_axi_rresp),
        .s_kernel_tvalid(vif.s_kernel_tvalid),
        .s_kernel_tready(vif.s_kernel_tready),
        .s_kernel_tdata(vif.s_kernel_tdata),
        .m_axi_arvalid(vif.m_axi_arvalid),
        .m_axi_arready(vif.m_axi_arready),
        .m_axi_araddr(vif.m_axi_araddr),
        .m_axi_arlen(vif.m_axi_arlen),
        .m_axi_rvalid(vif.m_axi_rvalid),
        .m_axi_rready(vif.m_axi_rready),
        .m_axi_rdata(vif.m_axi_rdata),
        .m_axi_awvalid(vif.m_axi_awvalid),
        .m_axi_awready(vif.m_axi_awready),
        .m_axi_awaddr(vif.m_axi_awaddr),
        .m_axi_awlen(vif.m_axi_awlen),
        .m_axi_wvalid(vif.m_axi_wvalid),
        .m_axi_wready(vif.m_axi_wready),
        .m_axi_wdata(vif.m_axi_wdata),
        .axi_valid_out(vif.axi_valid_out),
        .processed_data(vif.processed_data),
        .valid_out(vif.valid_out),
        .done(vif.done),
        .debug_out(vif.debug_out),
        .error(vif.error)
    );

    initial begin
        uvm_config_db#(virtual ai_accelerator_if)::set(null, "*", "vif", vif);
        run_test("ai_accelerator_test");
    end
endmodule