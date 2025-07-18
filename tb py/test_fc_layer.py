
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge

@cocotb.test()
async def test_fc_layer(dut):
    INPUT_SIZE = 4
    OUTPUT_SIZE = 2
    DATA_WIDTH = 16

    # Start clock
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut.reset.value = 1
    dut.start.value = 0
    dut.input_data_flat.value = 0
    dut.weights_flat.value = 0
    dut.bias_flat.value = 0
    for _ in range(3):
        await RisingEdge(dut.clk)
    dut.reset.value = 0
    await RisingEdge(dut.clk)

    # Prepare input vector: [1, 2, 3, 4]
    inputs = [4, 3, 2, 1]
    weights = [
        [1, 1, 1, 1],    # weights for output neuron 0
        [2, 2, 2, 2]     # weights for output neuron 1
    ]
    biases = [0, 5]

    def flatten(vec):
        return sum((v & 0xFFFF) << (i * DATA_WIDTH) for i, v in enumerate(reversed(vec)))

    dut.input_data_flat.value = flatten(inputs)
    dut.bias_flat.value = flatten(biases)

    # Flatten 2D weights
    flat_weights = []
    for row in weights:
        flat_weights.extend(row)
    dut.weights_flat.value = flatten(flat_weights)

    # Trigger FC computation
    dut.start.value = 1
    await RisingEdge(dut.clk)
    dut.start.value = 0

    # Wait for done
    for _ in range(100):
        await RisingEdge(dut.clk)
        if dut.done.value:
            break

    output = dut.output_data_flat.value.integer
    y0 = output & 0xFFFF
    y1 = (output >> 16) & 0xFFFF
    cocotb.log.info(f"Output Neuron 0 = {y1}")
    cocotb.log.info(f"Output Neuron 1 = {y0}")
