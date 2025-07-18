
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
from cocotb.result import TestFailure
import random

@cocotb.test()
async def image_preprocessing_tb(dut):
    # Clock generation
    clock = Clock(dut.clk, 10, units="ns")  # 100 MHz
    cocotb.start_soon(clock.start())

    # Reset
    dut.rst_n.value = 0
    dut.enable.value = 0
    dut.frame_start.value = 0
    dut.s_axis_tvalid.value = 0
    dut.s_axis_tdata.value = 0
    dut.m_axis_tready.value = 1

    for _ in range(5):
        await RisingEdge(dut.clk)
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)

    # Frame start
    dut.enable.value = 1
    dut.frame_start.value = 1
    await RisingEdge(dut.clk)
    dut.frame_start.value = 0

    # Send 10 RGB pixels
    for i in range(10):
        r = i * 10
        g = i * 5
        b = 255 - i * 20
        pixel = (r << 16) | (g << 8) | b

        dut.s_axis_tdata.value = pixel
        dut.s_axis_tvalid.value = 1

        while not dut.s_axis_tready.value:
            await RisingEdge(dut.clk)

        await RisingEdge(dut.clk)
        dut.s_axis_tvalid.value = 0
        await RisingEdge(dut.clk)

    # Wait for output
    for _ in range(20):
        await RisingEdge(dut.clk)
        if dut.m_axis_tvalid.value:
            data = dut.m_axis_tdata.value.integer
            r = (data >> 16) & 0xFF
            g = (data >> 8) & 0xFF
            b = data & 0xFF
            dut._log.info(f"Output RGB: R={r}, G={g}, B={b}")
