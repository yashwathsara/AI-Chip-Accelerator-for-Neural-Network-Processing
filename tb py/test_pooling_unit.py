
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def test_pooling_unit(dut):
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut.reset.value = 1
    dut.s_axis_tvalid.value = 0
    dut.s_axis_tdata.value = 0
    dut.s_axis_tlast.value = 0
    dut.m_axis_tready.value = 1
    for _ in range(3): await RisingEdge(dut.clk)
    dut.reset.value = 0

    # Send 2x2 window (MAX Pooling)
    values = [10, 11, 12, 13]
    for i, val in enumerate(values):
        dut.s_axis_tdata.value = val
        dut.s_axis_tlast.value = (i == len(values) - 1)
        dut.s_axis_tvalid.value = 1
        while not dut.s_axis_tready.value:
            await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
    dut.s_axis_tvalid.value = 0

    # Read Output
    for _ in range(10):
        await RisingEdge(dut.clk)
        if dut.m_axis_tvalid.value:
            dut._log.info(f"Output: {dut.m_axis_tdata.value.integer} (last = {dut.m_axis_tlast.value})")
