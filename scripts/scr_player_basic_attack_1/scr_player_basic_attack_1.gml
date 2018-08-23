//This state exit condition is in obj_player animation_end
image_speed = 1.25

if(alarm[0] == -1){
	audio_sound_pitch(sfx_tomahawk_slash, 2.5);
	audio_play_sound(sfx_tomahawk_slash,1,false)
	sprite_index = spr_player_basic_attack_1
	basic_attack_1= true
	// Check to see if there is a solid blocking path in HSP amount of spaces
	if (!place_meeting(x+hsp,y,obj_solid)){
		while(place_meeting(x+sign(hsp),y,obj_solid)){
			hsp = 0;
		}
		// Move character if there isnt a solid blocking path
		if(image_xscale > 0){
			x += sign(1) * (move_speed * 2);
			// Create hurt box 
			instance_create_layer(x+20,y,"Instances",obj_player_hurt_box)
		} else {
			x -= sign(1) * (move_speed * 2);
			// Create hurt box 
			instance_create_layer(x-30,y,"Instances",obj_player_hurt_box)
		}
	}

	alarm[0] = room_speed/2 + 5
	alarm[3] = room_speed/2
}