depth = -y

// Execute current state
script_execute(state)

if(keyboard_check(vk_subtract)){
	aggro_range = 1000	
}

if(hit_points <= 0){
	state = scr_graver_dead
}