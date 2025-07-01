# 🧠 One’s Counter (OC) in Verilog  
_Design across Transistor, Gate, and Behavioral Abstraction Levels_

> 🎓 **Course**: Digital Logic Design  
> 🏛️ **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 🔍 Project Overview

This project investigates **multi-level Verilog design** of a **One’s Counter (OC)** – a digital circuit that counts the number of logic '1's among its inputs.  
The OC is implemented at **three abstraction levels**:
- Transistor-level (using `nmos`, `pmos`)
- Gate-level (using basic primitives)
- Behavioral-level (with `assign` statements)

The project also introduces a **hierarchical structural design** to scale from 3 to 15 inputs efficiently.

---

## 🧩 Design Structure

### 🧪 3-Input One’s Counter

| Input Bits | Output Width | Description                      |
|------------|---------------|----------------------------------|
| a, b, c    | [1:0]         | Counts number of 1s among inputs |

**Implemented as:**
- ⚙️ **Transistor-level**: Using `nmos #3`, `pmos #5` with proper pull-up/pull-down logic
- 🔗 **Gate-level**: With primitives like `and`, `or`, `xor`
- 🧾 **Behavioral**: Simple arithmetic via `assign out = a + b + c`

---

### 🏗️ Hierarchical Scaling

To build larger counters, modular reuse is applied:

- **7-Input OC**: Composed of three 3-input OCs + a 3-input OC for summing partial results
- **15-Input OC**: Built from multiple 7-input and 3-input OCs in tree structure

### ⏱️ Timing Considerations

- Delays estimated manually (e.g., gate delay accumulation)
- Worst-case path identified in transistor-level and gate-level designs

---

## ⚡ Simulation Results

| Design Level     | Abstraction | Delay Handling       | Tool        | Notes                                |
|------------------|-------------|----------------------|-------------|--------------------------------------|
| Transistor-Level | Physical    | Manual (gate timing) | ModelSim    | Closest to real hardware behavior    |
| Gate-Level       | Structural  | Fixed delay models   | ModelSim    | Accurate and modular                 |
| Behavioral       | Abstract    | Idealized delays     | ModelSim    | Fastest to develop, less realistic   |

Testbenches validate **functional correctness** and help observe delay variation across versions.

---

## 📦 Project Deliverables

- 📁 RTL files for:
  - Transistor-level OC (`oc_transistor.v`)
  - Gate-level OC (`oc_gate.v`)
  - Assign-based OC (`oc_assign.v`)
  - Hierarchical 7/15-input OCs
- 🔬 Functional testbenches for all modules
- 📸 Simulation waveforms
- 🧮 Delay estimation tables & logic analysis
- 📄 Final report (PDF)

---

## 🧠 Learning Objectives

✅ Understand abstraction layers in digital design  
✅ Practice hierarchical module reuse  
✅ Apply timing analysis to RTL designs  
✅ Simulate and validate circuit behavior with real delays

---

> 💡 This project bridges the gap between transistor-level detail and behavioral abstraction, showing how simple logic functions can scale efficiently using structured RTL design in Verilog.

---
