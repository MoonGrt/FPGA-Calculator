onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ip_ajxd_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ip_ajxd_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ip_ajxd_0.udo}

run -all

endsim

quit -force
