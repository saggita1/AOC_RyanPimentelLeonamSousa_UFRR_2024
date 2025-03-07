transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/ULA.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/ROM.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/RegisterBank.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/RAM.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/ProgramCounter.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/MuxULA.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/Decodificador.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/ControlUnit.vhd}
vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/CPU.vhd}

vcom -93 -work work {E:/codigos/AOC_RyanPimentelLeonamSousa_UFRR_2024/processador/tb_cpu.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_cpu

add wave *
view structure
view signals
run -all
