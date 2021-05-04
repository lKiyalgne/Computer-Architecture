onerror {quit -f}
vlib work
vlog -work work CPU_TEST_Sim.vo
vlog -work work CPU_TEST_Sim.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.control_vlg_vec_tst
vcd file -direction CPU_TEST_Sim.msim.vcd
vcd add -internal control_vlg_vec_tst/*
vcd add -internal control_vlg_vec_tst/i1/*
add wave /*
run -all
