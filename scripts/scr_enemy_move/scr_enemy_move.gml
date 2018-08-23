//Delete Old Path First to Avoid Memory Leak
//Only make a new path if none exist or if we are done with the current path


if(path_position >= .95){
	
	
	//Make a delay between hops
	
	
	//Weird error with this code. if is firing even when alarm > 0
	/**if(alarm[5] < 0){
		
		alarm[5] = 600	
		
	}	**/
	
	//Had to make manual timer to deal with bug above
	can_jump = false
	jump_timer += delta_time + 5
	
	if(jump_timer >= jump_time_limit){
		jump_timer = 0
		can_jump = true
	}
	
}

//If player within a certain range then execute attack script
if( distance_to_object(obj_player) < jump_length   && can_basic_attack == true && can_jump){
	path_end()
	path_position = 0
	state = scr_rune_claw_start_attack
	return
}


else if(path_exists(path_to_player) and can_jump  ){
	

	
	//reset when we can jump again
	path_delete(path_to_player)
	path_to_player = path_add();
	has_path = mp_grid_path(grid, path_to_player, x, y, obj_player.x, obj_player.y, 1)
	path_position = 0
	can_jump = false
	//Set path to be smooth
	path_set_kind(path_to_player, 1)
}

else if (can_jump) {
	
	path_to_player = path_add();
	has_path = mp_grid_path(grid, path_to_player, x, y, obj_player.x, obj_player.y, 1)
	path_position = 0
	can_jump = false
	//Set path to be smooth
	path_set_kind(path_to_player, 1)
}




//Move towards player using path ^ 
if (has_path and path_position == 0){
	
	//Shorten path to jump length
	while(path_get_length(path_to_player) > jump_length and path_get_number(path_to_player) > 2){
		
		path_delete_point(path_to_player, path_get_number(path_to_player)-1)		
	}

	//Where is the next point?
	path_point_x = path_get_point_x(path_to_player, path_get_number(path_to_player)-1 )
	path_point_y = path_get_point_y(path_to_player, path_get_number(path_to_player)-1 )

	//get angle of direction
	angle = point_direction(x, y, path_point_x , path_point_y  )

	//Random offset
	offset = irandom(jump_length)  ;

	//Offeset in the direction we are traveling
	offset_x = abs(offset *sin(degtorad(angle) ) )
	offset_y = abs(offset *cos( degtorad(angle) ) )

	sign_x = sign(path_point_x - x)
	sign_y = sign(path_point_y - y)
	
	if(mp_grid_get_cell(grid, floor(path_point_x + offset_x*sign_x)/32, floor(path_point_y + offset_y*sign_y)/32) != -1 && distance_to_object(obj_player) > jump_length ) {

		path_change_point(path_to_player, path_get_number(path_to_player)-1, path_point_x + offset_x*sign_x, path_point_y - offset_y * sign_y, 3 )
	}
	//Set speed so each jump takes same amount of time
	path_start(path_to_player, move_speed*path_get_number(path_to_player), 0, 0);

}

//Check to see if player is out of range, disengage to idle state
if(distance_to_object(obj_player) > aggro_range){
	path_end()
	state = scr_enemy_idle
}


//Flip Sprite depending on relative position to player
if(obj_player.x > x){
	image_xscale = -1
} else {
	image_xscale = 1
}
