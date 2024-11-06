onerror {quit -f}
vlib work
vlog -work work esclavo.vo
vlog -work work esclavo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.esclavo_vlg_vec_tst
vcd file -direction esclavo.msim.vcd
vcd add -internal esclavo_vlg_vec_tst/*
vcd add -internal esclavo_vlg_vec_tst/i1/*
add wave /*
run -all
