if(state == scr_player_basic_attack_1 || state == scr_player_basic_attack_2 || state == scr_tomahawk_throw){
	image_speed = 1
	attacking = false
	state = scr_player_move	
}

if(state == scr_player_transforming){
	if(sprite_index == spr_tanglemane_transform_outro){
		image_index = 0
		state = scr_tanglemane_move	
		started_transform = false
	} else {
		image_index = 0
		sprite_index = spr_tanglemane_transform_outro	
	}
}
