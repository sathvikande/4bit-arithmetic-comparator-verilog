# 4bit-arithmetic-comparator-verilog
Verilog mini project implementing a 4-bit Arithmetic and Comparator unit with modular design and waveform simulation using Icarus Verilog and GTKWave.
#  4-bit Arithmetic–Comparator using Verilog HDL

###  Author: **Sathvik Ande**

---

##  Overview
This project implements a **4-bit Arithmetic–Comparator unit** using Verilog HDL.  
It performs basic arithmetic and comparison operations on two 4-bit inputs and demonstrates modular digital design.

The design includes:
- **Adder**, **Subtractor**, **Comparator**, and **MUX** modules  
- Control-based operation selection (`ctrl` input)  
- Waveform simulation with **Icarus Verilog** and **GTKWave**

---

##  Operations Supported

| Control (`ctrl`) | Operation | Output |
|------------------|------------|---------|
| `00` | Addition | Result = A + B |
| `01` | Subtraction | Result = A - B |
| `10` | Comparison | Flags = {Greater, Equal, Less} |
| `11` | Reserved | Output = 0000 |

---

## Project Modules

| File | Function |
|------|-----------|
| `adder_4bit.v` | Performs 4-bit addition |
| `subtractor_4bit.v` | Performs 4-bit subtraction |
| `comparator_4bit.v` | Compares two 4-bit inputs |
| `mux4to1_4bit.v` | Selects operation result |
| `arith_compare_top.v` | Integrates all modules |
| `tb_arith_compare_top.v` | Testbench for simulation |

---

##  Top-Level Design: `arith_compare_top.v`

### Inputs
- `A[3:0]`, `B[3:0]` → Operands  
- `ctrl[1:0]` → Operation selector  

### Outputs
- `result[3:0]` → Operation output  
- `flag[2:0]` → Flags → {Greater, Equal, Less}  

---

##  Simulation (Icarus Verilog)

### Compile & Run
```bash
iverilog -o arith_compare_sim adder_4bit.v subtractor_4bit.v comparator_4bit.v mux4to1_4bit.v arith_compare_top.v tb_arith_compare_top.v
vvp arith_compare_sim
gtkwave arith_compare.vcd
