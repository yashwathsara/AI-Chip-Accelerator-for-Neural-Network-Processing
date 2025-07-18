#include "Vtb_ai_accelerator_top.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);
    Vtb_ai_accelerator_top* top = new Vtb_ai_accelerator_top;

    vluint64_t main_time = 0;
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("dump.vcd");

    // Initialize
    top->clk = 0;
    top->rst_n = 0;
    top->eval();
    tfp->dump(main_time++);

    // Reset for 2 cycles
    for (int i = 0; i < 4; ++i) {
        top->clk ^= 1;
        top->eval();
        tfp->dump(main_time++);
    }
    top->rst_n = 1;

    // Run simulation
    for (int i = 0; i < 200; ++i) {
        top->clk ^= 1;
        top->eval();
        tfp->dump(main_time++);
    }

    tfp->close();
    delete top;
    return 0;
}
