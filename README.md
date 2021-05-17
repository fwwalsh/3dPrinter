Start Script

M140 S{material_bed_temperature} ; start preheating the bed WITHOUT wait to what is set in Cura
M104 S{material_print_temperature} ﻿T0 ; start preheating hotend WITHOUT wait to what is set in Cura

M280 P0 S160 ; BLTouch alarm release
G4 P100 ; delay for BLTouch
G28 ; home
G29 ; auto bed leveling

M190 S{material_bed_temperature} ; start heating the bed to what is set in Cura and WAIT
M109 S{material_print_temperature} ﻿T0 ; start heating hotend to what is set in Cura and WAIT


G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish


End Script

G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positioning

G1 X0 Y{machine_depth} ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z


