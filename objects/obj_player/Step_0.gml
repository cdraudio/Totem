/// @description Execute State and get player inputs


depth =  -bbox_bottom //-y
// execute my state
image_speed = 1

if(!hurt){
	script_execute(state)
}

else {
	
	knockback_speed = 6
	
	can_be_attacked = false
	can_dash =  true

	if(hurt_frame == 0){
		instance_create_layer(x,y,"Instances",obj_blood_impact)
		hurt_flag = true
		if(facing == 1){
			sprite_index = spr_player_hurt_back	
		} else if(facing == -1) {
				sprite_index = spr_player_hurt_side		
		} else {
				sprite_index = spr_player_hurt_front		
		}
	}
	tmp_num = sprite_get_number(sprite_index)*3


	if(hurt_frame < tmp_num and hurt_flag){
	
		image_index = int64(hurt_frame/3)
	
		move_x = lengthdir_x(knockback_speed, knock_dir)
		move_y = lengthdir_y(knockback_speed, knock_dir)
	
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
		hurt_flag = false
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