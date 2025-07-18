// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VTB_IMAGE_PREPROCESSING__SYMS_H_
#define _VTB_IMAGE_PREPROCESSING__SYMS_H_  // guard

#include "verilated_heavy.h"

// INCLUDE MODULE CLASSES
#include "Vtb_image_preprocessing.h"

// SYMS CLASS
class Vtb_image_preprocessing__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    Vtb_image_preprocessing*       TOPp;
    
    // CREATORS
    Vtb_image_preprocessing__Syms(Vtb_image_preprocessing* topp, const char* namep);
    ~Vtb_image_preprocessing__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
