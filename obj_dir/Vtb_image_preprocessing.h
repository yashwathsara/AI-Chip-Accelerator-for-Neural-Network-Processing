// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTB_IMAGE_PREPROCESSING_H_
#define _VTB_IMAGE_PREPROCESSING_H_  // guard

#include "verilated_heavy.h"

//==========

class Vtb_image_preprocessing__Syms;

//----------

VL_MODULE(Vtb_image_preprocessing) {
  public:
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    CData/*0:0*/ tb_image_preprocessing__DOT__clk;
    CData/*0:0*/ tb_image_preprocessing__DOT__rst_n;
    CData/*0:0*/ tb_image_preprocessing__DOT__enable;
    CData/*0:0*/ tb_image_preprocessing__DOT__s_axis_tvalid;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__min_r;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__min_g;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__min_b;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__max_r;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__max_g;
    CData/*7:0*/ tb_image_preprocessing__DOT__uut__DOT__max_b;
    IData/*23:0*/ tb_image_preprocessing__DOT__s_axis_tdata;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __VinpClk__TOP__tb_image_preprocessing__DOT__clk;
    CData/*0:0*/ __VinpClk__TOP__tb_image_preprocessing__DOT__rst_n;
    CData/*0:0*/ __Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__clk;
    CData/*0:0*/ __Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__rst_n;
    CData/*0:0*/ __Vchglast__TOP__tb_image_preprocessing__DOT__clk;
    CData/*0:0*/ __Vchglast__TOP__tb_image_preprocessing__DOT__rst_n;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vtb_image_preprocessing__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vtb_image_preprocessing);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vtb_image_preprocessing(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vtb_image_preprocessing();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vtb_image_preprocessing__Syms* symsp, bool first);
  private:
    static QData _change_request(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
    static QData _change_request_1(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__1(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vtb_image_preprocessing__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vtb_image_preprocessing__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__5(Vtb_image_preprocessing__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__3(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
    static void _sequent__TOP__4(Vtb_image_preprocessing__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
