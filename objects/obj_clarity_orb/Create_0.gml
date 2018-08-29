/// @description Insert description here
// You can write your code in this editor

//Speed
move_speed = 1.5
shoot_direction = 0

//Collectable?
collectable = false

//Random Start Index
image_index = random_range(0,5)
//Random Scale
image_xscale = random_range(0.1,0.25)
image_yscale = image_xscale

//Opacity
image_alpha = 0

//Random Color
image_blend = make_color_rgb(irandom(180),random_range(247,253),255);