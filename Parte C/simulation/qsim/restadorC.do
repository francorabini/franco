onerror {quit -f}
vlib work
vlog -work work restadorC.vo
vlog -work work restadorC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.esquematicoC_vlg_vec_tst
vcd file -direction restadorC.msim.vcd
vcd add -internal esquematicoC_vlg_vec_tst/*
vcd add -internal esquematicoC_vlg_vec_tst/i1/*
add wave /*
run -all
