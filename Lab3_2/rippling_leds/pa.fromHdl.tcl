
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name rippling_leds -dir "/media/vaibhavj/28E1-CC83/CS220Labs/Lab3_2/rippling_leds/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ripple_module.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ripple_module.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ripple_module $srcset
add_files [list {ripple_module.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
