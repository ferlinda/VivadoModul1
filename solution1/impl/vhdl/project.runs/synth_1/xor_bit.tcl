# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/project.cache/wt [current_project]
set_property parent.project_path C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/xor_bit.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/xor_bit.xdc
set_property used_in_implementation false [get_files C:/Users/Linda/Documents/AK_1_CS_FerlindaFeliana_HLS/solution1/impl/vhdl/xor_bit.xdc]


synth_design -top xor_bit -part xc7z010clg400-1


write_checkpoint -force -noxdef xor_bit.dcp

catch { report_utilization -file xor_bit_utilization_synth.rpt -pb xor_bit_utilization_synth.pb }
