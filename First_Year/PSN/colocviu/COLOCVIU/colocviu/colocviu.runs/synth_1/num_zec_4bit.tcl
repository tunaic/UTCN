# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/colocviu/colocviu.cache/wt [current_project]
set_property parent.project_path D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/colocviu/colocviu.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.2 [current_project]
set_property ip_output_repo d:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/colocviu/colocviu.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/colocviu/colocviu.srcs/sources_1/new/debouncer.vhd
  D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/colocviu/colocviu.srcs/sources_1/new/num_zec_4bit.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/Basys-3-Master2.xdc
set_property used_in_implementation false [get_files D:/First_Year/utcn/First_Year/PSN/colocviu/COLOCVIU/Basys-3-Master2.xdc]


synth_design -top num_zec_4bit -part xc7a35tcpg236-1


write_checkpoint -force -noxdef num_zec_4bit.dcp

catch { report_utilization -file num_zec_4bit_utilization_synth.rpt -pb num_zec_4bit_utilization_synth.pb }
