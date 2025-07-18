import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random

@cocotb.test()
async def dma_test(dut):
    cocotb.start_soon(Clock(dut.clk, 10, units="ns").start())
    dut.reset.value = 1
    await Timer(20, units="ns")
    dut.reset.value = 0

    # Write Registers
    dut.s_axi_awvalid.value = 1
    dut.s_axi_wvalid.value = 1
    dut.s_axi_bready.value = 1

    for addr, data in zip([0x00, 0x04, 0x08, 0x0C], [0x1000_0000, 0x2000_0000, 4, 1]):
        dut.s_axi_awaddr.value = addr
        dut.s_axi_wdata.value = data
        await RisingEdge(dut.clk)

    dut.s_axi_awvalid.value = 0
    dut.s_axi_wvalid.value = 0

    # Drive AXI stream input
    for i in range(4):
        dut.s_axis_tvalid.value = 1
        dut.s_axis_tdata.value = random.randint(0, 0xFFFFFFFF)
        await RisingEdge(dut.clk)
        while not dut.s_axis_tready.value:
            await RisingEdge(dut.clk)

    dut.s_axis_tvalid.value = 0

    # Wait for operation to complete
    for _ in range(50):
        await RisingEdge(dut.clk)
    assert dut.m_axi_awvalid.value or dut.m_axi_arvalid.value, "AXI transaction not initiated."

