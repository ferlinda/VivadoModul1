
call C:/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_xor_bit_top -prj xor_bit.prj --initfile "C:/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s xor_bit 
call C:/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings xor_bit -tclbatch xor_bit.tcl

