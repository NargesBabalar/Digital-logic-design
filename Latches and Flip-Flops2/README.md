# 🔧 Digital Logic Design Projects  
_Verilog Modules • Testbenches • RTL Synthesis_

> 🎓 **Course**: Digital Logic Design  
> 🏛️ **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 📘 Overview

This repository presents a curated collection of **Verilog-based digital components**, developed as coursework for the Digital Logic Design class.

Each module is designed with:
- Clean RTL structure (SystemVerilog)
- Accompanying **testbenches** for simulation
- Optional **synthesis-ready** and **blackbox** versions

Tools used: `ModelSim`, `Quartus II`, `Vivado`, `Yosys`

---

## 🧩 Core Modules

### 🔢 `bitCounter.v`
Counts the number of `1`s (or optionally `0`s) in a digital word.

- ✅ Testbench: `a1_testBench.v`  
- 📥 Includes: `bitCounter.syn.v`, `bitCounter.bb.v`

---

### 🔄 `shiftRegister.v`
Implements a configurable-width shift register.

- Supports shift in/out operations  
- Testbench: `a3_testBench.v`  
- Synthesized version included

---

### 🧮 `downCounter.v`
Synchronous down-counter with:
- Load input  
- Asynchronous reset  
- Synthesized `.syn.v` and blackbox `.bb.v`

---

### 🧭 `controller.v`
Implements a **finite state machine (FSM)** with:
- State transitions based on inputs  
- Output control signals for connected datapath modules

---

### 🧬 `sequenceDetector.v` & `d_detector.v`
Detects predefined **binary sequences** (e.g., `1011`, `1101`) in a serial bitstream.

- State machine-based implementation  
- Includes waveform validation

---

## 🧪 Testbenches

Each module is verified with a corresponding testbench:

| Testbench         | Target Module       |
|-------------------|---------------------|
| `a1_testBench.v`  | `bitCounter.v`      |
| `a3_testBench.v`  | `shiftRegister.v`   |
| `b2_testBench.v`  | `downCounter.v`     |
| `c2_testBench.v`  | `controller.v`      |
| `d2_testBench.v`  | `sequenceDetector.v`|

All testbenches simulate inputs and log results using ModelSim or GTKWave.

---

## 🧾 Documentation

📄 `Instruction.pdf`  
- Detailed specifications per module  
- Design constraints and waveform expectations  
- Notes on synthesis and simulation setup

---

## ⚙️ Usage Instructions

1. Open your Verilog simulation tool (e.g., ModelSim, Vivado).
2. Compile both the module and its testbench.
3. Run simulation and inspect waveforms or logs.
4. For synthesis, use `.syn.v` files and analyze area/delay reports.

---

> 💡 These building blocks demonstrate core principles in digital design—from FSM control to arithmetic/counting circuits—making them ideal for both learning and reuse in larger hardware systems.
