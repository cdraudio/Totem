
if(hurt_frame == 0){
	//Change image_blend and set image_speed to 0
	image_blend = c_red
	//move_speed = 0

	//Make self invincibles
	can_be_attacked = false
	
	//Trigger sfx
	audio_play_sound(sfx_tomahawk_impact,1,false)

	// Briefly end mp_grid path so that enemy gets knocked back
	path_end()

	//Make sure they are on the groud
	path_position = 0
	
	if(path_exists(path_to_player)){
		
		path_delete(path_to_player)	
	}


	knock_dir = point_direction(obj_player.x, obj_player.y, x, y)

	hurt_frame++
}

else if (hurt_frame == max_hurt_frame){
	state = scr_brute_idle
	image_blend = c_white
	hurt_frame = 0
}

else{
	
	if(hurt_frame < 2){
		image_index = hurt_frame	
	}
	
	else{
		image_index = 2	
	}
	
	// Knockback, first arg is distance of knock
	x += lengthdir_x(0.5, knock_dir);
	y += lengthdir_y(0.5, knock_dir);
	
	hurt_frame++
}

//Exit hurt_state
/*
if(alarm[0] == -1){
	alarm[0] = room_speed/15
}*/

