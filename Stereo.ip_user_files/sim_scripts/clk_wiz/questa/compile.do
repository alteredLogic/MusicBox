vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../Stereo.srcs/sources_1/ip/clk_wiz/clk_wiz_clk_wiz.v" \
"../../../../Stereo.srcs/sources_1/ip/clk_wiz/clk_wiz.v" \


vlog -work xil_defaultlib \
"glbl.v"

