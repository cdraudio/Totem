//This state exit condition is in obj_player animation_end
image_speed = 1.25

if(alarm[0] < 0){
	hsp = 0
	vsp = 0

	if(facing == 0){
		sprite_index = spr_tanglemane_bite_front
		basic_attack_1 = true

		vsp = (move_speed * 8);

	} else {
		sprite_index = spr_tanglemane_bite_front
		basic_attack_1 = true
		vsp = (move_speed * 5);
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
	
	alarm[0] = room_speed/2
}