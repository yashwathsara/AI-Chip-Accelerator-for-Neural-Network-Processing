
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock

@cocotb.test()
async def test_config_registers(dut):
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    dut.reset.value = 1
    dut.reg_write.value = 0
    dut.reg_read.value = 0
    dut.reg_addr.value = 0
    dut.reg_wdata.value = 0
    dut.reg_wstrb.value = 0xF
    for _ in range(3):
        await RisingEdge(dut.clk)
    dut.reset.value = 0
    await RisingEdge(dut.clk)

    # Write to cfg_enable (reg 0)
    dut.reg_addr.value = 0
    dut.reg_wdata.value = 0xDEADBEEF
    dut.reg_write.value = 1
    await RisingEdge(dut.clk)
    dut.reg_write.value = 0
    await RisingEdge(dut.clk)

    # Read from cfg_enable
    dut.reg_read.value = 1
    await RisingEdge(dut.clk)
    dut.reg_read.value = 0
    await RisingEdge(dut.clk)

    read_value = dut.reg_rdata.value.integer
    cocotb.log.info(f"Read cfg_enable = 0x{read_value:X}")
