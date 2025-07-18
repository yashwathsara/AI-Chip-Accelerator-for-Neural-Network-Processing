// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_image_preprocessing.h for the primary calling header

#include "Vtb_image_preprocessing.h"
#include "Vtb_image_preprocessing__Syms.h"

//==========

VL_CTOR_IMP(Vtb_image_preprocessing) {
    Vtb_image_preprocessing__Syms* __restrict vlSymsp = __VlSymsp = new Vtb_image_preprocessing__Syms(this, name());
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void Vtb_image_preprocessing::__Vconfigure(Vtb_image_preprocessing__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

Vtb_image_preprocessing::~Vtb_image_preprocessing() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void Vtb_image_preprocessing::_initial__TOP__5(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_initial__TOP__5\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->tb_image_preprocessing__DOT__clk = 0U;
    vlTOPp->tb_image_preprocessing__DOT__rst_n = 1U;
    vlTOPp->tb_image_preprocessing__DOT__enable = 1U;
    vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata = 0xffU;
    vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid = 0U;
    VL_FINISH_MT("tb/tb_image_preprocessing.sv", 46, "");
}

void Vtb_image_preprocessing::_eval_initial(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_eval_initial\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__clk 
        = vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__clk;
    vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__rst_n 
        = vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__rst_n;
    vlTOPp->_initial__TOP__5(vlSymsp);
}

void Vtb_image_preprocessing::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::final\n"); );
    // Variables
    Vtb_image_preprocessing__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vtb_image_preprocessing::_eval_settle(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_eval_settle\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
}

void Vtb_image_preprocessing::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_ctor_var_reset\n"); );
    // Body
    tb_image_preprocessing__DOT__clk = VL_RAND_RESET_I(1);
    tb_image_preprocessing__DOT__rst_n = VL_RAND_RESET_I(1);
    tb_image_preprocessing__DOT__enable = VL_RAND_RESET_I(1);
    tb_image_preprocessing__DOT__s_axis_tdata = VL_RAND_RESET_I(24);
    tb_image_preprocessing__DOT__s_axis_tvalid = VL_RAND_RESET_I(1);
    tb_image_preprocessing__DOT__uut__DOT__min_r = VL_RAND_RESET_I(8);
    tb_image_preprocessing__DOT__uut__DOT__min_g = VL_RAND_RESET_I(8);
    tb_image_preprocessing__DOT__uut__DOT__min_b = VL_RAND_RESET_I(8);
    tb_image_preprocessing__DOT__uut__DOT__max_r = VL_RAND_RESET_I(8);
    tb_image_preprocessing__DOT__uut__DOT__max_g = VL_RAND_RESET_I(8);
    tb_image_preprocessing__DOT__uut__DOT__max_b = VL_RAND_RESET_I(8);
    __VinpClk__TOP__tb_image_preprocessing__DOT__clk = VL_RAND_RESET_I(1);
    __VinpClk__TOP__tb_image_preprocessing__DOT__rst_n = VL_RAND_RESET_I(1);
    __Vchglast__TOP__tb_image_preprocessing__DOT__clk = VL_RAND_RESET_I(1);
    __Vchglast__TOP__tb_image_preprocessing__DOT__rst_n = VL_RAND_RESET_I(1);
}
