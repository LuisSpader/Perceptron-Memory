transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/luisa/Documents/Materias/UFSC/20201/Lab-EBD_ECL/NN_Neuron_unsigned_new_1/STD_DT.vhd}
vcom -93 -work work {C:/Users/luisa/Documents/Materias/UFSC/20201/Lab-EBD_ECL/NN_Neuron_unsigned_new_1/mem.vhd}
vcom -93 -work work {C:/Users/luisa/Documents/Materias/UFSC/20201/Lab-EBD_ECL/NN_Neuron_unsigned_new_1/sum.vhd}
vcom -93 -work work {C:/Users/luisa/Documents/Materias/UFSC/20201/Lab-EBD_ECL/NN_Neuron_unsigned_new_1/top_no_components.vhd}

