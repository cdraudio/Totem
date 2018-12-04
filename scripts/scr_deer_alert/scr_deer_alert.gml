sprite_index = spr_deer_small_alert

//Different sprite behavior if player is left or right of deer
if(obj_player.x > x){
	if(round(image_index) == 4){
		image_speed = 0	
		if(alarm[0] < 0){
			alarm[0] = room_speed/2
		}
}
}
if(round(image_index) == image_number - 1){
	image_speed = 0	
	if(alarm[0] < 0){
		alarm[0] = room_speed/2
	}
}
