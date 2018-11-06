/// @description Insert description here
// You can write your code in this editor
new = true
image_speed = 1
image_blend = c_gray
depth = 2



instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)

	
//Play hurt SFX
audio_play_sound(sfx_graver_hurt,1,false)
state = scr_graver_dead