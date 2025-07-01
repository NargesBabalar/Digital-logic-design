# 🧮 16-bit ALU — Arithmetic Logic Unit in Verilog  
_Design | Simulation | Synthesis_

> 🎓 **Course**: Digital Logic Design  
> 🏫 **University**: University of Tehran  
> 👨‍🏫 **Instructor**: Prof. Zain Navabi  

---

## 🧠 Project Description

This project implements a 16-bit **Arithmetic Logic Unit (ALU)** at the **RTL level** using Verilog HDL.  
The design is developed in **two styles**:
- **Behavioral**: Faster prototyping
- **Hardware-oriented (RTL)**: Closer to physical hardware

The ALU executes **arithmetic** and **logical** operations determined by a 3-bit opcode and generates **status flags** for zero (`zer`) and negative (`neg`) results.

---

## ⚙️ ALU Interface

### 🔸 Inputs
- `inA`, `inB`: 16-bit signed values  
- `inC`: 1-bit carry-in  
- `opc`: 3-bit opcode selector  

### 🔸 Outputs
- `outW`: 16-bit result  
- `zer`: Zero flag (`outW == 0`)  
- `neg`: Negative flag (`outW[15] == 1`)  

---

## 🔁 Opcode Functionality

| Opcode | Operation                            | Description                          |
|--------|--------------------------------------|--------------------------------------|
| `000`  | `~inA + 1`                            | Two’s complement of input A          |
| `001`  | `inA + 1`                             | Increment A                          |
| `010`  | `inA + inB + inC`                     | Full adder                           |
| `011`  | `inA + (inB >> 1)`                    | Add A with half of B                 |
| `100`  | `inA & inB`                           | Bitwise AND                          |
| `101`  | `inA | inB`                           | Bitwise OR                           |
| `110`  | `{inA[7:0], inB[7:0]}`                | Concatenate lower 8 bits             |
| `111`  | `inA`                                 | No operation                         |

---

## 🧪 Simulation & Verification

✅ **Testbench coverage**:
- All 8 opcodes  
- Special cases: zero, negatives, carry-in  
- Overflow/underflow edge testing  

🧰 Simulated in ModelSim with full waveform analysis.  
Comparisons made between **behavioral vs gate-level** implementations.

---

## 🛠️ Synthesis Workflow

- 🧰 **Tool Used**: [Yosys](https://github.com/YosysHQ/yosys)  
- 📋 Reports generated for:
  - 🔸 Area (gate count)
  - 🔸 Maximum delay
  - 🔸 Resource usage (logic elements, control paths)

Comparison of results is discussed in the final report: `Report.doc`.

---

## 📊 Observations & Trade-Offs

| Aspect               | Behavioral             | RTL (Structural)            |
|----------------------|------------------------|-----------------------------|
| ⏱️ Dev Time          | Fast                   | Moderate                    |
| 📐 Hardware Mapping  | Abstracted             | Explicit                    |
| ⛓️ Control Logic     | Minimal                | More MUX & control units    |
| ⚙️ Optimizability     | Harder to tune         | Easier for low-level tuning |

- `zer` and `neg` flags are generated **combinationally** based on `outW`
- RTL design provides **better control** over datapath and logic depth

---

## 📦 Provided Artifacts

- ✅ Verilog source files:
  - `alu_behavioral.v`
  - `alu_structural.v`
- ✅ Simulation testbenches
- ✅ Waveform screenshots
- ✅ Synthesis reports (Yosys)
- ✅ Documentation (`Report.doc`)

---

> 🚀 A solid introduction to designing reusable, scalable, and synthesis-friendly digital arithmetic units using Verilog HDL.
