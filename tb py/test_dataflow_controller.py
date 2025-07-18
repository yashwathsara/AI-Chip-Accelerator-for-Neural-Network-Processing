
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def test_dataflow_controller(dut):
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    dut.reset.value = 1
    dut.start_process.value = 0
    dut.cfg_write.value = 0
    dut.cfg_read.value = 0
    dut.data_ready.value = 0
    dut.compute_done.value = 0
    dut.store_complete.value = 0
    await RisingEdge(dut.clk)
    dut.reset.value = 0
    await RisingEdge(dut.clk)

    # Write config
    dut.cfg_write.value = 1
    dut.cfg_wdata.value = 0x12345678
    await RisingEdge(dut.clk)
    dut.cfg_write.value = 0
    await RisingEdge(dut.clk)

    # Read config
    dut.cfg_read.value = 1
    await RisingEdge(dut.clk)
    dut.cfg_read.value = 0
    await RisingEdge(dut.clk)

    # Start FSM
    dut.start_process.value = 1
    await RisingEdge(dut.clk)
    dut.start_process.value = 0

    # LOAD
    dut.data_ready.value = 1
    await RisingEdge(dut.clk)
    dut.data_ready.value = 0

    # COMPUTE
    dut.compute_done.value = 1
    await RisingEdge(dut.clk)
    dut.compute_done.value = 0

    # STORE
    dut.store_complete.value = 1
    await RisingEdge(dut.clk)
    dut.store_complete.value = 0

    await RisingEdge(dut.clk)
    assert dut.process_done.value == 1, "Process did not complete as expected"
    cocotb.log.info("FSM completed one full cycle.")
