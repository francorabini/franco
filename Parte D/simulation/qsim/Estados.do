onerror {quit -f}
vlib work
vlog -work work Estados.vo
vlog -work work Estados.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Estados_vlg_vec_tst
vcd file -direction Estados.msim.vcd
vcd add -internal Estados_vlg_vec_tst/*
vcd add -internal Estados_vlg_vec_tst/i1/*
add wave /*
run -all
