sprite_index = spr_deer_large_alert
if(round(image_index) == image_number - 1){
	image_speed = 0	
	if(alarm[0] < 0){
		alarm[0] = room_speed/2
	}
}
