//Toggle can attack
can_basic_attack = false

//Create hurtbox
//instance_create_layer(x,y,"Instances",obj_enemy_basic_attack_hurtbox)

/**if( path_exists(attack_path) and attacking == false){
	
	path_delete(attack_path)
	attack_path = path_add()
	//path_add_point(attack_path, x, y, 5)
	path_add_point(attack_path, obj_player.x, obj_player.y, 5)
	path_start(attack_path,5, 0, 1 )	
	attacking = true
}

else if (attacking == false){
	attack_path = path_add()
	//path_add_point(attack_path, x, y, 5) //Maybe we don't need that first point but trying anything
	path_add_point(attack_path, obj_player.x, obj_player.y, 5)
	path_start(attack_path,5, 0, 1 )	
	attacking = true
}



else if (path_position >= .95){
		
	state = scr_enemy_move
	path_position = 0
	path_end()
	attacking = false
	
	//Reset state
	if (alarm[1] == -1){
		alarm[1] = 60	
	}

	if (alarm[2] == -1){
		alarm[2] = 60	
	}
}

else if (place_meeting(x, y, obj_player)){
	instance_create_layer(x,y,"Instances",obj_enemy_basic_attack_hurtbox)
	
}**/

max_attack_frame = 5

if (attacking == false){
	attacking = true

	target_x = obj_player.x
	target_y = obj_player.y

	dist_x = target_x - x
	dist_y = target_y - y
}

else if (attack_frame == max_attack_frame){
	attacking = false
	state = scr_enemy_move
	can_jump = false
	attack_frame = 0
		//Reset state
	if (alarm[1] == -1){
		alarm[1] = 60	
	}

	if (alarm[2] == -1){
		alarm[2] = 60	
	}
	
}

else {
	x += dist_x/max_attack_frame
	y += dist_y/max_attack_frame
	attack_frame++
	if (place_meeting(x, y, obj_player)){
		instance_create_layer(x,y,"Instances",obj_enemy_basic_attack_hurtbox)
		attack_frame = max_attack_frame
	}
	
}

