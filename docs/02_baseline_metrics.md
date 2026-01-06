# Baseline Full Adder Metrics

## RTL Description
- Design: 1-bit Full Adder
- Inputs: A, B, Cin
- Outputs: Sum, Cout
- Style: Pure combinational logic
- Verification: SystemVerilog testbench + C reference model

## Baseline Synthesis Results (Yosys – Generic)

| Metric | Value |
|------|------|
| Total cells | 7 |
| AND gates | 3 |
| OR gates | 2 |
| XOR gates | 2 |
| Wires | 10 |
| Technology | Generic (pre-mapping) |

## Notes
These metrics are obtained from generic synthesis
using Yosys before technology mapping and physical design.
They serve as the reference baseline for future optimization
and custom standard-cell comparison.
