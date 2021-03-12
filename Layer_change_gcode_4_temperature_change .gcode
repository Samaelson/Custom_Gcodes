;BEFORE_LAYER_CHANGE
; layer_z is height of current layer in mm
G92 E0.0
;[layer_z]
{if layer_z <= 11.55}M104 S212
{elsif layer_z <= 21.55}M104 S211
{elsif layer_z <= 31.55}M104 S210
{elsif layer_z <= 41.55}M104 S209
{elsif layer_z <= 51.55}M104 S208
{endif}