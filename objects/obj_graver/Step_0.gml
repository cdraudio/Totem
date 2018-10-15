depth = -y

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
	if(!death_triggered){
		image_index = 0 
		instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
		instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
		death_triggered = true
	}
	state = scr_graver_dead
}