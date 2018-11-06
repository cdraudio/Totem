depth = -bbox_bottom+1 //-y

//Decide facing direction for sprites
if(y > yprevious){
	facing = 1
} else if(y < yprevious) {
	facing = -1	
}

// Execute current state
script_execute(state)

if(keyboard_check(vk_subtract)){
	aggro_range = 1000	
}

if(hit_points <= 0){
	//Play hurt SFX
	audio_play_sound(sfx_graver_hurt,1,false)
	
	if(!death_triggered){
		image_index = 0 
		instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
		instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
		death_triggered = true
	}
	state = scr_graver_dead
}


