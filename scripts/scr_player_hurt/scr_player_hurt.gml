//Change image_blend and set image_speed to 0
/*image_blend = c_red
image_speed = 0

//Make player invincible
can_be_attacked = false

// Knockback
obj_player.x += lengthdir_x(5, knock_dir);
obj_player.y += lengthdir_y(5, knock_dir);

//Exit hurt_state
if(alarm[4] == -1){
	alarm[4] = room_speed/4
}*/
can_be_attacked = false
can_dash =  true

if(hurt_frame < 5){
	
	image_blend = c_red
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
	
	if(dashing or key_dash){
		
		script_execute(scr_player_dash)	
	}
	
	else {
		script_execute(scr_player_move_hurt)
	}
	
	hurt_frame++
	
}

else {
	image_alpha = 1
	hurt_frame = 0
	state = scr_player_move
	can_be_attacked = true
	can_dash = true
}