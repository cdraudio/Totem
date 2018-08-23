// NOTE(shaw): player input sets the dir

max_dash_frame = 10
image_alpha = 1
dashing = true
can_dash = false
sprite_index = spr_magic_bubble

//THIS IS IMPORTANT when changing sprite index
//You want the collision mask to stay the same as
//The character so we aren't clipping on things
mask_index = obj_player

/**if (point_distance(x, y, dash_target_x, dash_target_y) < 10) {
		dashing = false
		can_dash = true 
		dash_target_x = 0
		dash_target_y = 0
		state = scr_player_move
} else {
	//lerp 
	xx = lerp(x, dash_target_x, dash_speed)
	yy = lerp(y, dash_target_y, dash_speed)
	
	//Stop player from lerping into collison objects
	if(distance_to_object(obj_solid) < dash_speed+1){
		x = xprevious
		y = yprevious
		dashing = false
		can_dash = true 
		dash_target_x = 0
		dash_target_y = 0
		state = scr_player_move
	} else {
		x = xx 
		y = yy
	}
}**/

//Reset 
if(dash_frame == max_dash_frame){
	
	dashing = false
	dash_frame = 0
	can_dash = true
	dash_target_x = 0
	dash_target_y = 0
	state = scr_player_move
}

//Mid-dash
else {
	
		//How far this frame
		move_x = dash_off_x/max_dash_frame
		move_y = dash_off_y/max_dash_frame
		
		//If place free, got there
		if(!place_meeting(x+move_x, y+move_y, obj_solid) ){
			x += move_x
			y += move_y
			dash_frame++
		}
		
		else {
			
			//Move until within 2 pixels
			while(! place_meeting(x+sign(move_x), y +sign(move_y), obj_solid ) ){
				
				x += sign(move_x)
				y += sign(move_y)

			}
			
				dashing = false
				dash_frame = 0
				can_dash = true
				dash_target_x = 0
				dash_target_y = 0
				state = scr_player_move
			
		}
		
		
	
}













