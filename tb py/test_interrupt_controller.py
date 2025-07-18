
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer

@cocotb.test()
async def test_interrupt_controller(dut):
    clk = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clk.start())

    dut.reset.value = 1
    dut.irq_in.value = 0
    dut.s_axi_awvalid.value = 0
    dut.s_axi_wvalid.value = 0
    dut.s_axi_arvalid.value = 0
    dut.s_axi_bready.value = 1
    dut.s_axi_rready.value = 1
    dut.s_axi_wstrb.value = 0xF

    await Timer(20, units="ns")
    dut.reset.value = 0

    # Enable irq[0]
    dut.s_axi_awaddr.value = 0x4
    dut.s_axi_wdata.value = 0x00000001
    dut.s_axi_awvalid.value = 1
    dut.s_axi_wvalid.value = 1
    await Timer(10, units="ns")
    dut.s_axi_awvalid.value = 0
    dut.s_axi_wvalid.value = 0

    # Trigger irq[0]
    await Timer(10, units="ns")
    dut.irq_in.value = 1
    await Timer(10, units="ns")
    dut.irq_in.value = 0

    await Timer(20, units="ns")

    # Clear irq[0]
    dut.s_axi_awaddr.value = 0x8
    dut.s_axi_wdata.value = 0x00000001
    dut.s_axi_awvalid.value = 1
    dut.s_axi_wvalid.value = 1
    await Timer(10, units="ns")
    dut.s_axi_awvalid.value = 0
    dut.s_axi_wvalid.value = 0

    await Timer(20, units="ns")
