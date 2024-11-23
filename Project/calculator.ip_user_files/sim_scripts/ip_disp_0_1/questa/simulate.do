onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ip_disp_0_opt

do {wave.do}

view wave
view structure
view signals

do {ip_disp_0.udo}

run -all

quit -force
