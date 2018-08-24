// Execute basic attack 2 animation, Create Damage Object, Trigger Basic Attack Cooldowns
image_speed = 1.25

if(alarm[1] == -1){
	audio_sound_pitch(sfx_tomahawk_slash, 3);
	audio_play_sound(sfx_tomahawk_slash,1,false)
	sprite_index = spr_player_basic_attack_2
	basic_attack_2 = true
	can_basic_attack = false
	
	// Check to see if there is a solid blocking path in HSP amount of spaces
	if (!place_meeting(x+hsp,y,obj_solid)){
		while(place_meeting(x+sign(hsp),y,obj_solid)){
			hsp = 0;
		}
		// Move character if there isnt a solid blocking path
		if(image_xscale > 0){
			x += sign(1) * (move_speed * 5);
			// Create hurt box 
			instance_create_layer(x+30,y,"Instances",obj_player_hurt_box)
		} else {
			x -= sign(1) * (move_speed * 5);
			// Create hurt box 
			instance_create_layer(x-30,y,"Instances",obj_player_hurt_box)
		}
	}
	alarm[1] = room_speed/2
	alarm[2] = room_speed/2
	alarm[3] = room_speed/2
}
