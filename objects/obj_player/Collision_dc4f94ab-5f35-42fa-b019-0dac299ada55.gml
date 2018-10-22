/// @description Collision With RuneClaw

 if(other.attacking and !dashing){
	//Set knockback direction
	knock_dir = point_direction(other.x, other.y, x, y);
	
	//Decrement hit_points by other.damage
	if(can_be_attacked){
		hit_points -= other.attack_damage
	}

	//Send to hurt_state
	if (hit_points > 0){
		//state = scr_player_hurt
		hurt = true
	}

	else {
		state = scr_player_dead	
	}	
}

//show_debug_message(hit_points)