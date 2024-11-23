vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../p_uart.srcs/sources_1/ip/ip_ajxd_0_1/ip_ajxd_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

