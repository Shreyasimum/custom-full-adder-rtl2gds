# Read RTL
read_verilog rtl/full_adder_baseline.v

# Set top module
hierarchy -top full_adder

# Generic synthesis
proc; opt; fsm; opt; memory; opt

# Technology mapping (generic for now)
techmap; opt

# Statistics
stat

# Write synthesized netlist
write_verilog synthesis/netlist_full_adder_baseline.v
