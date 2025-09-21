# 4bit-Ripple-Carry-Adder
Worked through an RTL → schematic → GDS flow for a 4-bit ripple-carry adder. The repository contains Verilog RTL and testbench, Cadence Virtuoso schematics and symbols, and GDS/layout results for the full adder.

---

# Project Summary

This repository documents an attempted RTL-to-GDS flow for a simple arithmetic block:

* Implemented the 1-bit full adder in Verilog using basic gates (XOR, OR, AND) and verified functionality with a Verilog testbench.
* Used the verified full adder RTL as the basis for schematic capture in Cadence Virtuoso; created a symbol for reuse.
* Performed layout and exported GDS for the full adder. Verified the layout by running transient simulations on the GDS-derived netlist and comparing outputs.
* Built a 4-bit ripple-carry adder (RCA) by connecting four full adders back-to-back in schematic, and verified the assembled RCA using transient simulation.

---

# RTL → GDS Flow (what was done)

1. **RTL implementation & simulation**

   * Wrote the 1-bit full adder in Verilog using XOR, OR, AND primitives.
   * Wrote a 4-bit RCA top module that chains four full adders.
   * Verified functional behavior with a Verilog testbench using transient vectors and monitored `sum` and `cout`.

2. **Schematic capture in Cadence Virtuoso**

   * Created the full adder schematic using standard gates (XOR/OR/AND).
   * Created a symbol for the full adder for schematic reuse and built the 4-bit RCA in the schematic environment.

3. **Layout & GDS export**

   * Implemented the full adder layout and exported GDS for the full adder.
   * Ran transient verification on the layout/GDS-derived netlist to confirm `sum` and `carry` behavior.

4. **Measurements from GDS verification (full adder)**

   * Observed delay between input `a` and output `sum`: **10.238 ps**.
   * Measured average power: **35.77 µW**.

5. **RCA assembly & verification**

   * Assembled the 4-bit RCA (four full adders connected back-to-back) in schematic using the created symbols.
   * Performed transient simulation on the RCA and verified `sum[3:0]` and final `cout` outputs.

---

# Notes

* This repository focuses on demonstrating the end-to-end RTL → schematic → GDS verification path for a simple full adder and a 4-bit RCA. No additional artifacts are included beyond the RTL, testbench, Cadence schematic/symbols, and GDS/layout described above.

---

*End of README.*
