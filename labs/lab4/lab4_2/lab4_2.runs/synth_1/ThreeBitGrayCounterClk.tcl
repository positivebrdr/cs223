# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.cache/wt [current_project]
set_property parent.project_path D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/lab4_2.srcs/sources_1/new/ThreeBitGrayCounter.sv
read_xdc D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/Basys3.xdc
set_property used_in_implementation false [get_files D:/Users/TEMP.PCLABS.001/Desktop/lab4_2/Basys3.xdc]

synth_design -top ThreeBitGrayCounterClk -part xc7a35tcpg236-1
write_checkpoint -noxdef ThreeBitGrayCounterClk.dcp
catch { report_utilization -file ThreeBitGrayCounterClk_utilization_synth.rpt -pb ThreeBitGrayCounterClk_utilization_synth.pb }