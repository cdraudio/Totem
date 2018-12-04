//set variables
image_alpha = 1
image_speed = 1.5


//Create dust trail
// There is definitely a better way to do this
if(can_dash){
	if(facing == 0){
		instance_create_layer(x + 58, y + 100 , "Instances",obj_roll_trail)
	} else if(facing == -1) {
		if(image_xscale > 0){
			instance_create_layer(x + 148 , y, "Instances",obj_roll_trail)
		} else {
			instance_create_layer(x - 38, y, "Instances",obj_roll_trail)
		}
	} else {
		instance_create_layer(x + 58, y - 100  , "Instances",obj_roll_trail)
	}
}

//dashing = true
can_dash = false

if(facing == 0){
	sprite_index = spr_player_dodge_front
} else if(facing == 1) {
	sprite_index = spr_player_dodge_back
} else {
	sprite_index = spr_player_dodge_side
}

//After setting the sprite we can use this function to get the number of frames
max_dash_frame = sprite_get_number(sprite_index)

draw_sprite_ext(spr_player_sprint_side,0,x,y,1,1,0,c_aqua,0.5)

//THIS IS IMPORTANT when changing sprite index
//You want the collision mask to stay the same as
//The character so we aren't clipping on things
//mask_index = obj_player

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
	//can_dash = true
	alarm[5] = 5
	dash_target_x = 0
	dash_target_y = 0
	state = scr_player_move  //moved this into alarm 5
}

/*if(floor(image_index) == image_number-1){
	// NOTE: Trying to get the dash to not play extra frames at the end
	dashing = false
	dash_frame = 0
	//can_dash = true
	alarm[5] = 6
	dash_target_x = 0
	dash_target_y = 0
} */

else if (alarm[5] != -1) {
	
}

//Mid-dash
else {
	
		//How far this frame
		move_x = dash_off_x/max_dash_frame
		move_y = dash_off_y/max_dash_frame
		
		//If place free, got there
		if(!place_meeting(x+move_x, y+move_y, obj_solid) ){

			//These numbers control the slower speed of the dash. 
			if(max_dash_frame - dash_frame <= 2){
				x += move_x/4
				y += move_y/4
				dash_frame+=.1
					
			}
			
			else {
				x += move_x
				y += move_y
				dash_frame++	
			}
			
		}
		
		else if (hit_solid){
			if(max_dash_frame - dash_frame <= 2){

				dash_frame+=.1
					
			}
			
			else{
				dash_frame++
			}
		}
		
		else {
			
			//Move until within 2 pixels
			while(! place_meeting(x+sign(move_x), y +sign(move_y), obj_solid ) ){
				
				x += sign(move_x)
				y += sign(move_y)

			}
				hit_solid = true
				/*dashing = false
				dash_frame = 0
				can_dash = true
				dash_target_x = 0
				dash_target_y = 0
				state = scr_player_move*/
			
		}
		
		
	
}













