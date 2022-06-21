############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
set_top passPointerArray
add_files HLS/interface.h
add_files HLS/interface.c
add_files -tb HLS/interface_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "HLS_PicoDMA" -flow_target vivado
set_part {xc7a50tcsg325-2}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Users/Nick/git/fpgaPico/PicoDMA/IP_Library -rtl verilog
source "./HLS/HLS_PicoDMA/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -O
export_design -rtl verilog -format ip_catalog -output C:/Users/Nick/git/fpgaPico/PicoDMA/IP_Library
