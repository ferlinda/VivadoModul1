############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AK_1_CS_FerlindaFeliana_HLS
set_top xor_bit
add_files AK_1_CS_FerlindaFeliana_HLS/xorBit.c
add_files AK_1_CS_FerlindaFeliana_HLS/xorBit.h
add_files -tb AK_1_CS_FerlindaFeliana_HLS/xorBit_test.c
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./AK_1_CS_FerlindaFeliana_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
