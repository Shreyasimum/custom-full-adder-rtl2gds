# Read RTL
read_verilog rtl/full_adder_baseline.v

# Set top module
hierarchy -check -top full_adder

# High-level synthesis
proc
opt
fsm
opt
memory
opt

# Technology mapping
techmap
opt

# Map combinational logic using ABC
abc -liberty tech/sky130/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Final clean-up
opt
clean

# Print statistics
stat

# Write mapped netlist
write_verilog synthesis/netlist_full_adder_sky130.v

