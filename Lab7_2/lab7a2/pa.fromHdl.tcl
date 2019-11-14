
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab7a2 -dir "/media/riteshkr/vaibhav/CS220Labs/Lab7_2/lab7a2/planAhead_run_3" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "lcd_welcome.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {lcd_welcome.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top lcd_welcome $srcset
add_files [list {lcd_welcome.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
