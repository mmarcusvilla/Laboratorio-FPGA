onerror {quit -f}
vlib work
vlog -work work CIRCUITO_COMBINACIONAL.vo
vlog -work work CIRCUITO_COMBINACIONAL.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CIRCUITO_COMBINACIONAL_vlg_vec_tst
vcd file -direction CIRCUITO_COMBINACIONAL.msim.vcd
vcd add -internal CIRCUITO_COMBINACIONAL_vlg_vec_tst/*
vcd add -internal CIRCUITO_COMBINACIONAL_vlg_vec_tst/i1/*
add wave /*
run -all
