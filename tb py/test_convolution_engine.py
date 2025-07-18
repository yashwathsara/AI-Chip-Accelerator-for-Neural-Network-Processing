
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
import random

@cocotb.test()
async def convolution_engine_tb(dut):
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut.reset.value = 1
    dut.s_axis_tvalid.value = 0
    dut.s_kernel_tvalid.value = 0
    dut.m_axis_tready.value = 1
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.reset.value = 0
    await RisingEdge(dut.clk)

    # Config
    dut.kernel_size.value = 3
    dut.num_channels.value = 3
    dut.stride.value = 1
    dut.padding.value = 1

    # Load kernel
    for ch in range(3):
        for i in range(9):
            dut.s_kernel_tdata[ch][i].value = 1
    dut.s_kernel_tvalid.value = 1
    while not dut.s_kernel_tready.value:
        await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.s_kernel_tvalid.value = 0

    # Load image
    for i in range(4):
        for j in range(4):
            for ch in range(3):
                val = i * 4 + j + ch
                dut.s_axis_tdata[ch].value = val
            dut.s_axis_tvalid.value = 1
            while not dut.s_axis_tready.value:
                await RisingEdge(dut.clk)
            await RisingEdge(dut.clk)
    dut.s_axis_tvalid.value = 0

    # Read output
    for _ in range(20):
        await RisingEdge(dut.clk)
        if dut.m_axis_tvalid.value:
            val = dut.m_axis_tdata.value.integer
            dut._log.info(f"Convolution Output: {val}")
