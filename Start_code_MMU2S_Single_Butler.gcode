M862.3 P "[printer_model]" ; printer model check
M862.1 P[nozzle_diameter] ; nozzle diameter check
M115 U3.9.3 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
Tx
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

;go outside print area
G1 Y-3.0 F1000.0
G1 Z0.4 F1000.0
; select extruder
Tc
; purge line
G1 X55.0 F2000.0
G1 Z0.3 F1000.0
G92 E0.0
G1 X240.0 E25.0 F2200.0
G1 Y-2.0 F1000.0
G1 X55.0 E25 F1400.0
G1 Z0.20 F1000.0
G1 X5.0 E4.0 F1000.0
G92 E0.0
V1 ; engage filament at MMU2S