# Multiplier

A structural implementation of a 4x4 binary array multiplier built from basic gate-level components in SystemVerilog.

---

## Contents

| Module | Description |
|--------|-------------|
| `and_gate.sv` | Basic AND gate (1-bit) |
| `fulladder.sv` | 1-bit Full Adder |
| `multiplier.sv` | 4x4 Array Multiplier (top module) |

---

## How It Works

The multiplier uses an array of AND gates to generate partial products, then sums them using full adders — mimicking the standard long multiplication method in binary.

- **Inputs:** A[3:0], B[3:0]
- **Output:** P[7:0]

---

## Tools

- **Language:** SystemVerilog
- **Simulator:** ModelSim / QuestaSim
- **Synthesis:** Quartus Prime (Intel)

---

## How to Simulate

```bash
# Compile
vlog and_gate.sv fulladder.sv multiplier.sv multiplier_tb.sv

# Simulate
vsim -c multiplier_tb -do "run -all; quit"
```

---

## Author

**Fahad Ali**
Electronics Engineer | IC/VLSI Enthusiast
[LinkedIn](https://www.linkedin.com/in/fahad-ali-alyf301/) · [GitHub](https://github.com/fahaddalii301)
