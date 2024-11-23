vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../p_uart.srcs/sources_1/ip/ip_ajxd_0_1/ip_ajxd_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

