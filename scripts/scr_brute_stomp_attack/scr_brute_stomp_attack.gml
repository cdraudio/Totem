sprite_index = spr_brute_stomp_side
hsp = 0
vsp = 0
path_end()


if(floor(image_index) == 10){
	image_speed = 0	
}

if(image_speed == 0){
	stomp_timer --
	if(stomp_timer <= 0){
		image_speed = 1	
	}
}