//Toggle can attack
can_basic_attack = false


max_attack_frame = 8
sprite_index = spr_graver_attack



if (attacking == false and attack_frame == 0){
	state = scr_graver_strafe
	can_jump = false
	
	if (alarm[2] == -1){
		alarm[2] = 60	
	}
	

}

else if (sliding and hit_player){
	//x += (dist_x/max_attack_frame)/( (slide_frames/2)*(slide_frames-slide_frame) )
	//y += (dist_y/max_attack_frame)/( (slide_frames/2) )
	x += (dist_x/max_attack_frame)/( (slide_frames) )*((slide_frames-slide_frame)/5)
	y += (dist_y/max_attack_frame)/( (slide_frames) )*((slide_frames-slide_frame)/5)
	slide_frame++
	
		image_index = sprite_get_number(sprite_index)-1
	
	if(slide_frame >= slide_frames){
			slide_frame = 0
			attack_frame = 0
			attacking = false
			sliding = false
			hit_player = false
	}
}

else if (sliding){
	//x += (dist_x/max_attack_frame)/( (slide_frames/2)*(slide_frames-slide_frame) )
	//y += (dist_y/max_attack_frame)/( (slide_frames/2) )
	x += (dist_x/max_attack_frame)/( (slide_frames) )*((slide_frames-slide_frame)/5)
	y += (dist_y/max_attack_frame)/( (slide_frames) )*((slide_frames-slide_frame)/5)
	slide_frame++
	
		image_index = sprite_get_number(sprite_index)-1
	
	if(slide_frame >= slide_frames){
			slide_frame = 0
			attack_frame = 0
			attacking = false
			sliding = false
			hit_player = false
	}
}


else if (attacking == false and attack_frame > 0){
	
	//x -= dist_x/max_attack_frame
	//y -= dist_y/max_attack_frame
	attack_frame--
	
}

else if (attack_frame == max_attack_frame){
	//attacking = false
	sliding = true
	/*state = scr_graver_move
	can_jump = false
	attack_frame = 0
		//Reset state
	

	if (alarm[2] == -1){
		alarm[2] = 60	
	}*/
	
}

else {
	x += dist_x/max_attack_frame
	y += dist_y/max_attack_frame
	attack_frame++
	if (place_meeting(x, y, obj_player)){
		instance_create_layer(x,y,"Instances",obj_enemy_basic_attack_hurtbox)
		attack_frame = max_attack_frame
		sliding = true
		hit_player = true
	}
	
}

