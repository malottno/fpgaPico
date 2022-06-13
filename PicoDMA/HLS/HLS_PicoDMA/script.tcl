############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
open_solution "HLS_PicoDMA" -flow_target vivado
set_part {xc7a50tcsg325-2}
create_clock -period 10 -name default
#source "./HLS/HLS_PicoDMA/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
