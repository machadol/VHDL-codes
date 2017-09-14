# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.cache/wt [current_project]
set_property parent.project_path /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.srcs/sources_1/new/RAM.vhd
  /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.srcs/sources_1/new/RAM_controller.vhd
  /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-CODES/Teste_5_RAM/Teste_5_RAM.srcs/sources_1/new/top_module.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top top_module -part xc7a35tcpg236-1


write_checkpoint -force -noxdef top_module.dcp

catch { report_utilization -file top_module_utilization_synth.rpt -pb top_module_utilization_synth.pb }