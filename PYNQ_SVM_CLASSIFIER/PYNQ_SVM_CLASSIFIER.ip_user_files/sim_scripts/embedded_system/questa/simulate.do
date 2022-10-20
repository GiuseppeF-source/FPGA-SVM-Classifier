onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib embedded_system_opt

do {wave.do}

view wave
view structure
view signals

do {embedded_system.udo}

run -all

quit -force
