image_speed = 1.5

//Create axe at player location
if(!instance_exists(obj_tomahawk_projectile) and can_throw_tomahawk){
	instance_create_layer(x,y + 10,"Instances",obj_tomahawk_projectile)
	
	//Push player back
	if(image_xscale == 1){
		x -= 1
	}

	if(image_xscale == -1) {
		x += 1
	}
}


//Toggle cooldown
can_throw_tomahawk = false

if(facing == 0){
	sprite_index = spr_player_throw_front
} else if(facing == 1) {
	sprite_index = spr_player_throw_back
} else {
	sprite_index = spr_player_throw_side
}
	


if(alarm[4] < 0){
	alarm[4] = room_speed
}

image_speed = 1