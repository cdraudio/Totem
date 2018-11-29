

if (point_distance(x, y, obj_player.x, obj_player.y) > aggro_dist and leap_frame >= max_leap_frame and pause_timer == 0){
	leap_frame = 0
	pause_timer = 0
	leap_num = 0
	state = scr_tanglemane_boss_approach
}


//Starting new need new target
else if(leap_frame == 0){
	var jump = 0
	
	var angle_off = 0

	//Large Jump
	if (leap_num == 2){
		jump = big_leap_length
		angle_off = irandom_range(3,10)
	}
	
	//normal jump
	else{
		jump = leap_length
		angle_off = 0
	}

	var chosen = choose(-angle_off, angle_off)

	target_x = x + lengthdir_x(jump,  point_direction(x, y,  obj_player.x, obj_player.y) + chosen )
	target_y =  y + lengthdir_y(jump,  point_direction(x, y,  obj_player.x, obj_player.y)+ chosen )
	
	to_move_x = target_x - x
	to_move_y = target_y - y
	
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

//finished and waiting on timer for next leap.
else if(leap_frame >= max_leap_frame){
	pause_timer += delta_time
	image_index = run_frames - 1
	
	if(leap_num == 1){
		
		
		if(pause_timer >= 700000){
			image_blend = c_blue	
			
		}
		
		if(pause_timer >= 1500000){
			pause_timer = 0
			leap_frame = 0
			leap_num++
			if(leap_num > 2){
				leap_num = 0	
			}
		}
	}
	
	else{
		if(pause_timer >= 700000){
			pause_timer = 0
			leap_frame = 0
			leap_num++
			if(leap_num > 2){
				leap_num = 0	
			}
		}
	}
}



else if (leap_frame >= 12){
	x += to_move_x/20
	y += to_move_y/20
	leap_frame++
	image_index = run_frames - 2
	attacking = false
}


else{
	
	x += to_move_x/10
	y += to_move_y/10
	leap_frame++
	image_index = floor(leap_frame/4)
	
}





