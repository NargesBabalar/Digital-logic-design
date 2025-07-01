# 🧮 RTL-Based `cos(x)` Hardware Accelerator  
_A Taylor Series Expansion Approach in Fixed-Point Arithmetic_

> 📍 **Project Type**: RTL Digital Design  
> 🎓 **Course**: Advanced Digital Systems Design Lab  
> 🏛️ **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 🧠 Overview

This project implements a **hardware accelerator** that computes `cos(x)` using **Taylor series approximation** at the **Register-Transfer Level (RTL)**. The design applies a **modular datapath + controller approach** based on the **Hoffman FSM model**, optimized for synthesis on FPGA.

> 💡 Use of fixed-point arithmetic ensures real-time precision, low-resource usage, and FPGA compatibility.

---

## 🧪 Algorithmic Basis

We use the truncated Taylor series expansion for cosine:  
\
    **cos(x) ≈ 1 − x²/2! + x⁴/4! − x⁶/6! + ...**

- Supports **n terms**, where _n_ is **configurable via counter**.
- Input/output represented in **fixed-point** binary format.

---

## ⚙️ RTL Architecture

**Major Components:**

| Component        | Role                          |
|------------------|-------------------------------|
| Registers        | Store partial results/inputs  |
| Adders/Subtractors | Perform accumulation         |
| Multiplier       | Power term generation         |
| ROM              | Store factorial denominators  |
| Counter          | Track Taylor series terms     |
| Comparator       | Termination condition         |
| FSM Controller   | Coordinates datapath steps    |

🧩 **FSM Design**: Hoffman-based Mealy FSM model.

---

## 🔬 Simulation & Synthesis Workflow

1. ⚙️ Open the project in **Quartus II** (or equivalent).
2. 🧷 Load **ROM contents** via provided `sin.mif.txt`.
3. 🧪 Use `cosx_testBench.v` to simulate the entire pipeline.
4. 🧱 Verify each module independently before integration.
5. 🔄 Synthesize and export `*.vo`, `*.sdo`, and `*_bb.v` files.

---

## 🏁 Key Features

- 🔧 **Configurable Accuracy** via term-counter.
- 📐 **Structured RTL** with datapath-control separation.
- 🧪 **Full Testbench Support** for validation.
- 🧠 **Memory-Based Coefficients** for clean design.
- 🛠️ **Synthesis-Ready**: All blackbox and synthesized files included.

---

## 📦 Project Artifacts

✔️ Verilog RTL Modules  
✔️ FSM Controller (`hoffman_FSM.v`)  
✔️ ROM & memory map (`sin.mif.txt`)  
✔️ Simulation waveforms & testbench  
✔️ Synthesis reports (Timing/Area)  
✔️ `Instruction.pdf` – Complete documentation  

---

## 🧾 Summary

This RTL project demonstrates:
- Efficient fixed-point implementation of trigonometric functions
- Separation of control and datapath logic using FSM methodology
- Synthesis and simulation flows for FPGA hardware

> 🚀 Ideal for embedded systems, low-power devices, and learning hardware-software co-design techniques.

---
