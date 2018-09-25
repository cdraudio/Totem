//This state exit condition is in obj_player animation_end
image_speed = 1.5

if(alarm[0] == -1){
	hsp = 0
	vsp = 0
	if(facing == -1){
		sprite_index = spr_player_basic_attack_1_side
		basic_attack_1= true

			if(image_xscale > 0){
				hsp = (move_speed * 8);

			} 
			
			else {
				hsp = -(move_speed * 8);

			}
	}
	else if(facing == 1){
		sprite_index = spr_player_basic_attack_1_back
		basic_attack_1= true

		vsp = -(move_speed * 8);

	}
	else if(facing == 0){
		sprite_index = spr_player_basic_attack_1_front
		basic_attack_1= true

		vsp = (move_speed * 8);

	}
	
	//Horizontal collision
	meeting = place_meeting(x+hsp, y, obj_solid)
	
	
	if(hsp != 0 and !meeting){
		x += hsp
		hsp = 0
	}

	else if (hsp != 0 and meeting) {
		while(!place_meeting(x+sign(hsp), y, obj_solid) ){
			x += sign(hsp)
		}
	
		hsp = 0
	}



	//Vertical Collision
	else if(vsp != 0 and !place_meeting(x, y+vsp, obj_solid)){
		y += vsp
		vsp = 0
	}

	else {
		while(!place_meeting(x, y+sign(vsp), obj_solid) ){
				y += sign(vsp)
		}
	
		vsp = 0
	}
	
	
	
	if(facing == -1){

			if(image_xscale > 0){

				// Create hurt box 
				instance_create_layer(x+32,y,"Instances",obj_player_hurt_box)
			} 
			
			else {

				// Create hurt box 
				instance_create_layer(x-32,y,"Instances",obj_player_hurt_box)
			}
	}
	else if(facing == 1){

				// Create hurt box 
				instance_create_layer(x,y-32,"Instances",obj_player_hurt_box_2)
	}
	else if(facing == 0){

				// Create hurt box 
				instance_create_layer(x,y+32,"Instances",obj_player_hurt_box_2)
	}	
	
	
	alarm[0] = room_speed/3 + 8
	alarm[3] = room_speed/3
}