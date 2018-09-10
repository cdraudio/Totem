/// @description Execute State and get player inputs


depth = -y
// execute my state
image_speed = 1

if(!hurt){
	script_execute(state)
}

else {
	
	can_be_attacked = false
	can_dash =  true

	if(hurt_frame < 5){
	
		move_x = lengthdir_x(5, knock_dir)
		move_y = lengthdir_y(5, knock_dir)
	
		//Move if free
		if(!place_meeting(x+move_x, y+move_y, obj_solid) ){
			x += move_x
			y += move_y
		
		}
	
		else {
			while(!place_meeting(x + sign(move_x), y + sign(move_y), obj_solid) ) {
			
				x += sign(move_x)
				y += sign(move_y)
			
			}
		}
	
		hurt_frame++
	
	}

	else if (hurt_frame < max_hurt_frame){
	
		image_blend = c_white
		if( floor(hurt_frame/2)%2 == 0){
			image_alpha = 0	
		}
	
		else {
			image_alpha = 1	
		}
	
		script_execute(state)	

		hurt_frame++
	
	}

	else {
		image_alpha = 1
		hurt_frame = 0
		//state = scr_player_move
		hurt = false
		can_be_attacked = true
		can_dash = true
	}
}



if(hit_points <= 0){
	state = scr_player_dead	
}