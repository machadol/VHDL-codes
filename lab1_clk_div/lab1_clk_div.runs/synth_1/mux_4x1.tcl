# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-codes/lab1_clk_div/lab1_clk_div.cache/wt [current_project]
set_property parent.project_path /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-codes/lab1_clk_div/lab1_clk_div.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-codes/lab1_clk_div/lab1_clk_div.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/lucas/Documents/UnB/Disciplinas/ED2/VHDL-codes/lab1_clk_div/lab1_clk_div.srcs/sources_1/new/mux_4x1.vhd
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top mux_4x1 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef mux_4x1.dcp

catch { report_utilization -file mux_4x1_utilization_synth.rpt -pb mux_4x1_utilization_synth.pb }
