

if(leap_frame == 0){
	var jump = 0

	if (jump_num == 2){
		jump = big_leap_length
	}

	else{
		jump = leap_length	
	}

	target_x = x + lengthdir_x(jump,  point_direction(x, y,  obj_player.x, obj_player.y) )
	target_y =  y + lengthdir_y(jump,  point_direction(x, y,  obj_player.x, obj_player.y) )
	
	to_move_x = target_x - x
	to_move_y = target_y - y

	leap_frame++

}

else if(leap_frame == max_leap_frame){
	pause_timer += delta_time
	image_index = run_frames - 1
	if(pause_timer >= 500000){
		pause_timer = 0
		leap_frame = 0
	}
}



else if (leap_frame >= 4){
	x += to_move_x/10
	y += to_move_y/10
	leap_frame++
	image_index = run_frames - 2
}


else{
	
	x += to_move_x/5
	y += to_move_y/5
	leap_frame++
	image_index = leap_frame
	
}





