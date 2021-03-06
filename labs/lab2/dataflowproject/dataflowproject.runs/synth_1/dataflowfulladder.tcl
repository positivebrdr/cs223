# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Users/TEMP.PCLABS.000/dataflowproject/dataflowproject.cache/wt [current_project]
set_property parent.project_path D:/Users/TEMP.PCLABS.000/dataflowproject/dataflowproject.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib -sv D:/Users/TEMP.PCLABS.000/lab2/lab2.srcs/sources_1/new/dataflowfulladder.sv
read_xdc D:/Users/TEMP.PCLABS.000/Downloads/Basys3.xdc
set_property used_in_implementation false [get_files D:/Users/TEMP.PCLABS.000/Downloads/Basys3.xdc]

synth_design -top dataflowfulladder -part xc7a35tcpg236-1
write_checkpoint -noxdef dataflowfulladder.dcp
catch { report_utilization -file dataflowfulladder_utilization_synth.rpt -pb dataflowfulladder_utilization_synth.pb }
