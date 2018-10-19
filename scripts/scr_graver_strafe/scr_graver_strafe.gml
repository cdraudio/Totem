image_speed = 1
sprite_index = spr_graver_walk

if(strafing == false){
	
	strafe_path = 0
	strafing = true	
	strafe_time = 0
	strafe_time_limit = 1000000 + irandom(3000000)
	strafe_dir = irandom(359)
	strafe_dist = 128 + irandom(128)
	clockwise = choose(-1, 1)
}


else {
	
	strafe_time += delta_time
	
	
	if(strafe_time >= strafe_time_limit){
		
		state = scr_graver_move
		path_end()
		strafing = false
		
	}
	
	else{
		
			if(path_exists(strafe_path)){
				path_delete(strafe_path)	
			}
		
		
			strafe_path = path_add()
			
			strafe_dir += clockwise
			
			mp_grid_path(grid, strafe_path, x, y, lengthdir_x(strafe_dist, strafe_dir)+obj_player.x , lengthdir_y(strafe_dist, strafe_dir)+obj_player.y , 1) 
		
			path_start(strafe_path, move_speed, 0, 0 )
			
			if(obj_player.x < x){
				image_xscale = -1
			} else {
				image_xscale = 1
			}

	}
		

}

