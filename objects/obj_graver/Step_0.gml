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
	state = scr_graver_dead
}