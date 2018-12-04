sprite_index = spr_deer_medium_idle

//Trigger alert if within distance to player, decide direction to run
if(distance_to_object(obj_player) <= 200){
	if(obj_player.x > x){
		move_speed = move_speed * -1
	}
	
	image_index = 0
	state = scr_deer_alert1
	
}

if(distance_to_object(obj_brute) <= 200){
	if(obj_player.x > x){
		move_speed = move_speed * -1
	}
	
	image_index = 0
	state = scr_deer_alert1
}