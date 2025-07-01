# 💡 Digital Logic Design – RTL Projects Collection  
_Verilog Implementation • Simulation • Synthesis_

> 🎓 **Course**: Digital Logic Design  
> 🏛️ **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 📘 About This Repository

This repository gathers all major **RTL-based assignments** completed for the **Digital Logic Design** course.  
Projects cover a wide spectrum of topics:  
✅ Gate/transistor-level circuits  
✅ RTL datapaths & FSMs  
✅ Combinational & sequential designs  
✅ FPGA synthesis (Quartus, Yosys)

---

## 📁 Project Structure

### 🔲 `accelerator_cosx/`
- RTL-based **cos(x)** computation using **Taylor Series**  
- FSM controller (Hoffman model) + fixed-point datapath  
- Simulation + synthesis-ready with ROM-based coefficient loading  

---

### 🧮 `ones_counter/`
- **One’s Counter** using transistor-level, gate-level, and behavioral design  
- Hierarchical construction (3, 7, 15-input versions)  
- Timing delay analysis & waveform comparison  

---

### ⚙️ `alu_16bit/`
- 16-bit **Arithmetic Logic Unit** with 3-bit opcode  
- Supports add, negate, shift, AND, OR, concat, passthrough  
- Behavioral vs structural RTL versions  
- Synthesized with **Yosys**, tested via waveform simulation  

---

### 🔁 `sequential_sr_dff/`
- Implementation of **SR latch**, **D Flip-Flop**, and **DFF with Preset/Clear**  
- Analyzes timing constraints: `tsetup`, `thold`, propagation delay  
- Tests include illegal conditions (e.g., S=0, R=0 or PRE=CLR=1)  

---

### 🟠 `quartus_sr_dff/`
- Replication of above flip-flop designs in **Intel Quartus II**  
- RTL viewer screenshots, **.vcd** waveforms, and synthesized reports included  

---

## 🔬 Technical Topics

| Topic                            | Covered? |
|----------------------------------|----------|
| RTL Modeling in Verilog          | ✅        |
| FSM-Based Control (Mealy/Moore)  | ✅        |
| Combinational Logic (ALUs, etc.) | ✅        |
| Sequential Logic (FFs, Latches)  | ✅        |
| Gate & Transistor-Level Delays   | ✅        |
| Testbenches & Simulation         | ✅        |
| Synthesis & Optimization         | ✅        |

---

## 🧪 Tools & Workflow

| Tool            | Purpose                         |
|-----------------|----------------------------------|
| **ModelSim**    | RTL simulation & waveform debug |
| **Quartus II**  | FPGA synthesis (Intel FPGAs)    |
| **Yosys**       | Synthesis for open-source flows |
| **GTKWave**     | Viewing .vcd waveform outputs   |
| **Icarus**      | Lightweight simulation testing  |

---

## 🧾 Deliverables

- ✅ Clean Verilog modules (`.v`)
- ✅ Testbenches (`*_tb.v`)
- ✅ Synthesis artifacts (`*_syn.v`, `.sdf`, `.bb.v`)
- ✅ Simulation outputs (.vcd / screenshots)
- ✅ Full documentation (`Instruction.pdf`, waveform captures, timing analysis)

---

> 🚀 This repository reflects foundational and advanced digital design principles — from logic gates to structured datapaths — using Verilog and simulation-first development.
