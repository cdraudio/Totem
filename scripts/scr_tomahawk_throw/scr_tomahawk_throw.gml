//Toggle cooldown
can_throw_tomahawk = false
image_speed = 1.5

if(facing == 0){
	sprite_index = spr_player_basic_attack_1_front
} else if(facing == 1) {
	sprite_index = spr_player_basic_attack_1_back
} else {
	sprite_index = spr_player_basic_attack_1_side
}
	
//Create rabbit at player location
if(!instance_exists(obj_tomahawk_projectile)){
	instance_create_layer(x,y + 10,"Instances",obj_tomahawk_projectile)
	
	//Screen Shake
	obj_view.shaking = true	
	obj_view.shake_intensity = 8
	
	
	//Push player back
	if(image_xscale == 1){
		x -= 1
	}

	if(image_xscale == -1) {
		x += 1
	}
}

if(alarm[4] < 0){
	alarm[4] = room_speed * 2
}

image_speed = 1