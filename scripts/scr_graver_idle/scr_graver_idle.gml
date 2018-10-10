//Reset init variables
image_blend = c_white
image_speed = 1

/**
//Wander path
if (alarm[4] < 0){
	alarm[4] = random_range(100,180)	
}

//End path when reaching the end of wander
if(path_position > 0.9){
	path_end()	
}
**/
max_wander_frame = 10

//If idling, percent chance to pick a new spot
if (wandering == false and irandom(1000) < 10){
	

	
	//Set target and get distance
	wander_target_x = x + random_range(-40, 40)
	wander_target_y = y + random_range(-40, 40)
	wander_offset_x = wander_target_x - x
	wander_offset_y = wander_target_y - y
	
	if(x - wander_target_x < 0){
		image_xscale = -1	
	}
	else{
		image_xscale = 1	
	}
	
	//Make sure new spot is not inside a solid
	if(!place_meeting(wander_target_x, wander_target_y, obj_solid)){
		wandering = true	
	}


}

//If wandering
else if (wandering){
	
	sprite_index = spr_graver_walk
	
	if( wander_frame != max_wander_frame ){
			x += wander_offset_x/max_wander_frame
			y += wander_offset_y/max_wander_frame
			wander_frame++
			
			
			
			//This variable is normally used with path functions
			//but the hop animation in the draw event depends on a path position
			//so we can just use it anyhow
			path_position = wander_frame/max_wander_frame
	}
	
	else {
		wandering = false
		wander_frame = 0
		path_position = 0
		sprite_index = spr_graver_idle
	}
	
}



//Check distance to player, if in_range then switch to move_towards_player state
if(distance_to_object(obj_player) <= aggro_range){
	state = scr_graver_move
	wandering = false
	wander_frame = 0
}