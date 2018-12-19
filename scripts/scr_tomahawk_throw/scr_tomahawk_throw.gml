image_speed = 1.5
//Create axe at player location
if(!instance_exists(obj_tomahawk_projectile) and can_throw_tomahawk){
	instance_create_layer(x,y + 10,"Instances",obj_tomahawk_projectile)
	
	//Play swing sfx
	if(!audio_is_playing(sfx_tomahawk_throw_swing)){
		audio_play_sound(sfx_tomahawk_throw_swing,1,false)
	}
	
	//Push player back
	if(image_xscale == 1){
		x -= 1
	}

	if(image_xscale == -1) {
		x += 1
	}
}


//Play throw sfx
if(!audio_is_playing(sfx_tomahawk_throw)){
	audio_sound_gain(sfx_tomahawk_throw,1,0)
	audio_play_sound(sfx_tomahawk_throw,1,false)
}


//Toggle cooldown
can_throw_tomahawk = false

if(facing == 0){
	sprite_index = spr_player_throw_front
} else if(facing == 1) {
	sprite_index = spr_player_basic_attack_1_back
} else {
	sprite_index = spr_player_throw_side
}
	


if(alarm[4] < 0){
	alarm[4] = room_speed
}

image_speed = 1