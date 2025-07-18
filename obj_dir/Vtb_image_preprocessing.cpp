// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_image_preprocessing.h for the primary calling header

#include "Vtb_image_preprocessing.h"
#include "Vtb_image_preprocessing__Syms.h"

//==========

void Vtb_image_preprocessing::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vtb_image_preprocessing::eval\n"); );
    Vtb_image_preprocessing__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("tb/tb_image_preprocessing.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void Vtb_image_preprocessing::_eval_initial_loop(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("tb/tb_image_preprocessing.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void Vtb_image_preprocessing::_combo__TOP__1(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_combo__TOP__1\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->tb_image_preprocessing__DOT__clk = (1U 
                                                & (~ (IData)(vlTOPp->tb_image_preprocessing__DOT__clk)));
}

VL_INLINE_OPT void Vtb_image_preprocessing::_sequent__TOP__3(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_sequent__TOP__3\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (VL_UNLIKELY(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid)) {
        VL_WRITEF("Time: %0t | Output Data: %x\n",64,
                  VL_TIME_UNITED_Q(1),24,((0xff0000U 
                                           & ((((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_r) 
                                                != (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r))
                                                ? VL_DIV_III(32, 
                                                             ((IData)(0xffU) 
                                                              * 
                                                              ((0xffU 
                                                                & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                                                   >> 0x10U)) 
                                                               - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r))), 
                                                             ((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_r) 
                                                              - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r)))
                                                : (0xffU 
                                                   & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                                      >> 0x10U))) 
                                              << 0x10U)) 
                                          | ((0xff00U 
                                              & ((((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_g) 
                                                   != (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g))
                                                   ? 
                                                  VL_DIV_III(32, 
                                                             ((IData)(0xffU) 
                                                              * 
                                                              ((0xffU 
                                                                & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                                                   >> 8U)) 
                                                               - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g))), 
                                                             ((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_g) 
                                                              - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g)))
                                                   : 
                                                  (0xffU 
                                                   & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                                      >> 8U))) 
                                                 << 8U)) 
                                             | (0xffU 
                                                & (((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_b) 
                                                    != (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b))
                                                    ? 
                                                   VL_DIV_III(32, 
                                                              ((IData)(0xffU) 
                                                               * 
                                                               ((0xffU 
                                                                 & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata) 
                                                                - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b))), 
                                                              ((IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_b) 
                                                               - (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b)))
                                                    : 
                                                   (0xffU 
                                                    & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata))))));
    }
}

VL_INLINE_OPT void Vtb_image_preprocessing::_sequent__TOP__4(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_sequent__TOP__4\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                           >> 8U)) > (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_g))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_g 
                    = (0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                >> 8U));
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_g = 0U;
    }
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata) 
                 < (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b 
                    = (0xffU & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata);
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_b = 0xffU;
    }
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                           >> 8U)) < (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g 
                    = (0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                >> 8U));
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_g = 0xffU;
    }
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                           >> 0x10U)) > (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_r))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_r 
                    = (0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                >> 0x10U));
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_r = 0U;
    }
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                           >> 0x10U)) < (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r 
                    = (0xffU & (vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata 
                                >> 0x10U));
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__min_r = 0xffU;
    }
    if (vlTOPp->tb_image_preprocessing__DOT__rst_n) {
        if (((IData)(vlTOPp->tb_image_preprocessing__DOT__enable) 
             & (IData)(vlTOPp->tb_image_preprocessing__DOT__s_axis_tvalid))) {
            if (((0xffU & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata) 
                 > (IData)(vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_b))) {
                vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_b 
                    = (0xffU & vlTOPp->tb_image_preprocessing__DOT__s_axis_tdata);
            }
        }
    } else {
        vlTOPp->tb_image_preprocessing__DOT__uut__DOT__max_b = 0U;
    }
}

void Vtb_image_preprocessing::_eval(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_eval\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_combo__TOP__1(vlSymsp);
    if (((IData)(vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__clk) 
         & (~ (IData)(vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__clk)))) {
        vlTOPp->_sequent__TOP__3(vlSymsp);
    }
    if ((((IData)(vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__clk) 
          & (~ (IData)(vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__clk))) 
         | ((~ (IData)(vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__rst_n)) 
            & (IData)(vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__rst_n)))) {
        vlTOPp->_sequent__TOP__4(vlSymsp);
    }
    // Final
    vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__clk 
        = vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__clk;
    vlTOPp->__Vclklast__TOP____VinpClk__TOP__tb_image_preprocessing__DOT__rst_n 
        = vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__rst_n;
    vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__clk 
        = vlTOPp->tb_image_preprocessing__DOT__clk;
    vlTOPp->__VinpClk__TOP__tb_image_preprocessing__DOT__rst_n 
        = vlTOPp->tb_image_preprocessing__DOT__rst_n;
}

VL_INLINE_OPT QData Vtb_image_preprocessing::_change_request(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_change_request\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData Vtb_image_preprocessing::_change_request_1(Vtb_image_preprocessing__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_change_request_1\n"); );
    Vtb_image_preprocessing* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    __req |= ((vlTOPp->tb_image_preprocessing__DOT__clk ^ vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__clk)
         | (vlTOPp->tb_image_preprocessing__DOT__rst_n ^ vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__rst_n));
    VL_DEBUG_IF( if(__req && ((vlTOPp->tb_image_preprocessing__DOT__clk ^ vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__clk))) VL_DBG_MSGF("        CHANGE: tb/tb_image_preprocessing.sv:3: tb_image_preprocessing.clk\n"); );
    VL_DEBUG_IF( if(__req && ((vlTOPp->tb_image_preprocessing__DOT__rst_n ^ vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__rst_n))) VL_DBG_MSGF("        CHANGE: tb/tb_image_preprocessing.sv:4: tb_image_preprocessing.rst_n\n"); );
    // Final
    vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__clk 
        = vlTOPp->tb_image_preprocessing__DOT__clk;
    vlTOPp->__Vchglast__TOP__tb_image_preprocessing__DOT__rst_n 
        = vlTOPp->tb_image_preprocessing__DOT__rst_n;
    return __req;
}

#ifdef VL_DEBUG
void Vtb_image_preprocessing::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_image_preprocessing::_eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
