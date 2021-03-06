# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/TEMP.PCLABS/Desktop/GameOfCodes/GameOfCodes.cache/wt [current_project]
set_property parent.project_path D:/Users/TEMP.PCLABS/Desktop/GameOfCodes/GameOfCodes.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv D:/Users/TEMP.PCLABS/Desktop/GameOfCodes/GameOfCodes.srcs/sources_1/new/ShiftReg.sv
synth_design -top PseudoRandomGenerator -part xc7a35tcpg236-1
write_checkpoint -noxdef PseudoRandomGenerator.dcp
catch { report_utilization -file PseudoRandomGenerator_utilization_synth.rpt -pb PseudoRandomGenerator_utilization_synth.pb }
