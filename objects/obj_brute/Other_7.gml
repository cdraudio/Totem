/// @description create blood and screen shake on death
if(state == scr_graver_dead){
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	obj_view.shaking = true
	obj_view.shake_intensity = 8
}

//switch back to movement state
if(state == scr_brute_attack){
	image_index = 0
	dust_count = 0
	state = scr_brute_move	
}