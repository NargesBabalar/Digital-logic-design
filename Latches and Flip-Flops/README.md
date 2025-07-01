# 🔄 SR Latches & D Flip-Flops in Verilog  
_Sequential Logic | Timing Analysis | HDL Simulation_

> 🎓 **Course**: Digital Logic Design  
> 🏛️ **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 🧠 Project Overview

This project explores the **design, simulation, and timing behavior** of fundamental sequential elements—**SR Latches** and **D Flip-Flops**—implemented in **Verilog HDL**.

The primary objectives include:
- Understanding low-level **timing constraints** such as setup/hold times
- Simulating **edge-triggered behavior**
- Designing enhanced flip-flops with **asynchronous control inputs** (Preset, Clear)

---

## 🧩 Modules Implemented

### 🟢 SR Latch (Active-Low)

| Feature              | Description                         |
|----------------------|-------------------------------------|
| Implementation       | Cross-coupled NAND gates            |
| Timing               | PMOS delay: `#6 ns`, NMOS delay: `#4 ns` |
| Behavior Simulated   | - Valid transitions<br>- **Illegal state**: `S = 0`, `R = 0` |
| Outcome              | Memory loss or oscillation under illegal condition |

---

### 🔵 D Flip-Flop (Built from SR Latches)

| Feature              | Description                         |
|----------------------|-------------------------------------|
| Structure            | Master-slave using 3 SR-latches     |
| Edge Behavior        | Positive edge-triggered             |
| Timing Constraints   | `tsetup`, `thold` analyzed          |
| Edge Cases           | Setup/hold violations tested        |
| Delay Analysis       | Propagation delays measured         |

---

### 🟠 D Flip-Flop with Preset & Clear

| Feature              | Description                         |
|----------------------|-------------------------------------|
| Enhancements         | Asynchronous `PRE` (set Q=1), `CLR` (set Q=0) |
| Simulation Scenarios | - Standard D/CLK operation<br>- Only PRE or CLR active<br>- **Both active** (illegal) |
| Notes                | Priority and undefined behavior explored |

---

## 📈 Simulation Highlights

- 🖥️ **Waveforms**:
  - SR Latch oscillation from bouncing inputs
  - DFF with setup/hold violations
  - Preset/Clear overrides during clock transitions  
- 📊 **Edge Condition Testing**:
  - Meta-stability visualization
  - Delay tracking using annotated gate-level models

---

## 📦 Deliverables

- `sr_latch.v`: Active-low NAND SR Latch  
- `d_flip_flop.v`: DFF using SR latches  
- `dff_with_pre_clr.v`: Enhanced DFF with asynchronous PRE/CLR  
- `*.tb.v`: Testbenches for each module  
- `waveforms/`: Simulated outputs (Modelsim or GTKWave)  
- `report.pdf`: Full documentation of design, timing, and simulation results  

---

## 🎯 Learning Outcomes

✅ Hands-on with **sequential building blocks**  
✅ Practical analysis of **timing violations**  
✅ Modeling **asynchronous logic behavior**  
✅ Working with **low-level delays** and test scenarios

---

> 💡 A foundational project that builds deep understanding of sequential logic timing and Verilog-based hardware description — essential for advanced digital design.
