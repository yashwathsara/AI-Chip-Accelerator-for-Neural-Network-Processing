
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def test_activation_function(dut):
    # Setup clock
    cocotb.start_soon(Clock(dut.clk, 10, units="ns").start())

    # Reset
    dut.reset.value = 1
    dut.s_axis_tvalid.value = 0
    dut.s_axis_tdata.value = 0
    dut.s_axis_tlast.value = 0
    dut.m_axis_tready.value = 1
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.reset.value = 0
    await RisingEdge(dut.clk)

    # Send a positive input
    dut.s_axis_tdata.value = 0x00000010  # +16
    dut.s_axis_tlast.value = 0
    dut.s_axis_tvalid.value = 1
    while not dut.s_axis_tready.value:
        await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.s_axis_tvalid.value = 0

    # Send a negative input
    dut.s_axis_tdata.value = 0x80000010  # -16
    dut.s_axis_tlast.value = 1
    dut.s_axis_tvalid.value = 1
    while not dut.s_axis_tready.value:
        await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.s_axis_tvalid.value = 0

    # Wait and observe output
    for _ in range(10):
        await RisingEdge(dut.clk)
        if dut.m_axis_tvalid.value:
            data = dut.m_axis_tdata.value.integer
            last = dut.m_axis_tlast.value
            dut._log.info(f"Output: {hex(data)} Last: {int(last)}")
