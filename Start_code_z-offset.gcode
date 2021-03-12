M862.3 P "[printer_model]" ; printer model check
M862.1 P[nozzle_diameter] ; nozzle diameter check
M115 U3.9.1 ; tell printer latest fw version
G90 ; use absolute coordinates
M83  ; extruder relative mode
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
G4 S300; will wait for 300 seconds = 5 minutes
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling
M117 Place PP sheet on print bed
M300 S1000 P500 ; Send beep sound
G91
G1 Z150; pause, move print head up
M0 ; pause - press knob to continue
G4 S300; will wait for 300 seconds = 5 minutes
M190 S[first_layer_bed_temperature] ; wait for bed temp
G1 Z-150; continue, move print head down
G90
M117 Continue printing
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Y-3.0 F1000.0 ; go outside print area
G92 E0.0
G1 X60.0 E9.0 F1000.0 ; intro line
G1 X100.0 E12.5 F1000.0 ; intro line
G92 E0.0