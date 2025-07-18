// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vtb_image_preprocessing__Syms.h"
#include "Vtb_image_preprocessing.h"



// FUNCTIONS
Vtb_image_preprocessing__Syms::Vtb_image_preprocessing__Syms(Vtb_image_preprocessing* topp, const char* namep)
    // Setup locals
    : __Vm_namep(namep)
    , __Vm_didInit(false)
    // Setup submodule names
{
    // Pointer to top level
    TOPp = topp;
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOPp->__Vconfigure(this, true);
}
