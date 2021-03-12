V0 ; disengage filament at MMU2S
{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+10, max_print_height)}{endif} F720 ; Move print head up
G1 X0 Y210 F7200
G1 E2 F5000
G1 E2 F5500
G1 E2 F6000
G1 E-15.0000 F5800
G1 E-20.0000 F5500
G1 E10.0000 F3000
G1 E-10.0000 F3100
G1 E10.0000 F3150
G1 E-10.0000 F3250
G1 E10.0000 F3300

M140 S0 ; turn off heatbed
M107 ; turn off fan
M702 C
G4 ; wait
M104 S0 ; turn off temperature
M900 K0 ; reset LA
M84 ; disable motors