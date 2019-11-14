
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name seven_bit_adder_subtractor -dir "/media/vaibhavj/vaibhav/CS220Labs/Lab6_1/seven_bit_adder_subtractor/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "module_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {one_bit_add_sub.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {rot_event_detect.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {detect_rising_edge.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {module_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top module_top $srcset
add_files [list {module_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
