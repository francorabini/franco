transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {restadorC.vho}

vcom -93 -work work {C:/Users/franc/OneDrive/FRANCO/franco/Parte C/esquematicoCtestbench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  esquematicoCtestbench

add wave *
view structure
view signals
run -all
