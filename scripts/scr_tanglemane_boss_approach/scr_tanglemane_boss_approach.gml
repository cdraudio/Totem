

if(point_distance(x, y, obj_player.x, obj_player.y) > aggro_dist-10 ){

	target_x = x + lengthdir_x(move_speed,  point_direction(x, y,  obj_player.x, obj_player.y) )
	target_y =  y + lengthdir_y(move_speed,  point_direction(x, y,  obj_player.x, obj_player.y))
	
	to_move_x = target_x - x
	to_move_y = target_y - y
	
	x += to_move_x
	y += to_move_y
	
	var tmax = max(abs(to_move_x), abs(to_move_y) )
	
	if (tmax == abs(to_move_x) ){
		if(to_move_x >=0){
			facing = DIR.RIGHT
			sprite_index = spr_tanglemane_run_side;
			image_xscale = 1
		}
		
		else {
			facing = DIR.LEFT
			sprite_index = spr_tanglemane_run_side;
			image_xscale = -1
		}
	}
	
	else{
		if(to_move_y >=0){
			facing = DIR.DOWN
			sprite_index = spr_tanglemane_run_front;
			image_xscale = 1
		}
		
		else {
			facing = DIR.UP
			sprite_index = spr_tanglemane_run_back;
			image_xscale = 1
		}		
	}

	leap_frame++
	attacking = true
}

else {
	
	state = scr_tanglemane_boss_chase	
}




