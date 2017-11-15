onerror {exit -code 1}
vlib work
vlog -work work CRC.vo
vlog -work work CRC.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CRC_vlg_vec_tst -voptargs="+acc"
vcd file -direction CRC.msim.vcd
vcd add -internal CRC_vlg_vec_tst/*
vcd add -internal CRC_vlg_vec_tst/i1/*
run -all
quit -f
