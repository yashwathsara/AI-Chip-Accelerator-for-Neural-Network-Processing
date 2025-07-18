# AI_Accelerator_Project
# 🚀 AI Chip Accelerator for Neural Network Processing

![License](https://img.shields.io/badge/license-MIT-green.svg)
![Vivado](https://img.shields.io/badge/tool-Xilinx%20Vivado-blue.svg)
![SystemVerilog](https://img.shields.io/badge/language-SystemVerilog-orange.svg)
![Python](https://img.shields.io/badge/language-Python-yellow.svg)
![FPGA](https://img.shields.io/badge/platform-FPGA-red.svg)

---

## 👤 Author

**Kudum Yashwanth**  
📍 Bengaluru, Karnataka, India  
📧 [kudumyashwanth@gmail.com](mailto:kudumyashwanth@gmail.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/yashwanthkudum)

---

## 📌 **Project Overview**

This repository hosts the RTL implementation of an **AI Chip Accelerator** designed for neural network inference on FPGA platforms. It features a **pipelined convolution engine** and hardware modules for high-throughput CNN processing.

Developed as part of my **B.E ECE specialization in VLSI design and AI hardware**, this project demonstrates advanced skills in digital design, SoC protocols, and real-world AI acceleration.

---

## ✨ **Key Features**

- 🔧 **Convolution Engine** with line buffers and parallel MAC units
- ⚡ **16x16 image processing** with **32 channels** optimized for CNN inference
- 🔄 **AXI4-Stream interfaces** for DMA-based input/output transfer
- ✅ **Synthesizable RTL code** verified on Xilinx Vivado and GOWIN IDE
- 📝 **Clean architecture**, modular design, and simulation testbenches

---

## 🏗️ **Block Diagram**

[ Input Image ]
|
v
[ Line Buffer ] --> [ Convolution Engine ] --> [ Activation Function ] --> [ Output Feature Maps ]
|
v
[ MAC Units ]

yaml
Copy
Edit

---

## 🖼️ **Vivado Implementation Snapshots**

| RTL Schematic View | Synthesized Design |
|---------------------|---------------------|
| *(Add RTL schematic image here)* | *(Add synthesized design image here)* |

---

## 🏗️ **Project Architecture**

AI-Chip-Accelerator/
├── src/ # SystemVerilog RTL modules
│ ├── convolution_engine.sv
│ └── pooling_unit.sv
├── tb/ # Testbenches for module verification
├── reports/ # Synthesis and simulation reports
└── README.md # Project documentation

markdown
Copy
Edit

---

## 🚀 **Getting Started**

### 🔨 **Prerequisites**

- **Vivado 2022.2** or **GOWIN IDE**
- Basic knowledge of **SystemVerilog**, **FPGA flows**, and **CNN architectures**

### 💻 **Clone Repository**

```bash
git clone https://github.com/yashwathsara/AI-Chip-Accelerator-for-Neural-Network-Processing.git
cd AI-Chip-Accelerator-for-Neural-Network-Processing
▶️ Run Simulation
Open Vivado and create a project.

Add RTL files from src/ and testbenches from tb/.

Compile and simulate to verify convolution outputs and pipeline behavior.

🏭 Synthesize Design
Run synthesis on convolution_engine.sv.

Review area, timing, and power reports in /reports/.

Deploy on FPGA (e.g., Tang Primer 25K) for real-time testing.

🎯 Project Objective
Design an AI hardware accelerator IP core capable of processing convolution operations efficiently for neural networks, reducing inference latency and enabling on-chip intelligence in embedded or edge devices.

🔬 Technical Highlights
✅ Pipelined architecture with minimal stall cycles

✅ Parallel MAC units for simultaneous channel processing

✅ Memory-efficient line buffer implementation

✅ Parameterizable kernel and image sizes

✅ AXI4-Stream integration for high-speed data transfer

📜 License
This repository is released under the MIT License.

🙏 Acknowledgements
Maven Silicon for training in Verilog and AMBA protocols.

Sri Sairam College of Engineering, Bengaluru, for academic guidance.

🔥 Connect with Me
I am actively seeking internship and graduate roles in VLSI, AI hardware, and chip design at companies like NVIDIA, Qualcomm, or Bengaluru-based startups. Let’s collaborate to build disruptive semiconductor solutions!

“Think it already exists? Great. I built it better. Let’s talk business.”
