//Reset Variables
image_blend = c_white
image_speed = 1.25
tanglemane = false

//Short delay after dash before moving again
if(!can_dash){
	return	
}

//Get Inputs
script_execute(scr_configure_player_inputs)

// Default to walking sprite and idle if not moving
if(!moving){
	if(facing == 1){
		sprite_index = spr_player_idle_back
	} else if (facing == -1){
		sprite_index = spr_player_idle_side	
	} else {
		sprite_index = spr_player_idle_front	
	}
}

if(moving){
	//Play footstep sound on a controlled interval
	if(footstep_count == 0){
		audio_play_sound(choose(sfx_footstep_01,sfx_footstep_02,sfx_footstep_03,sfx_footstep_04,sfx_footstep_05,sfx_footstep_06,sfx_footstep_07,sfx_footstep_08),1,false)
		//footstep_count changes time between each step
		footstep_count = 20
	}
	
	if(facing == 0){
		sprite_index = spr_player_sprint_front
	} else if(facing == 1) {
		sprite_index = spr_player_sprint_back
	} else {
		sprite_index = spr_player_sprint_side
	}
	
	if(footstep_count > 0){
		footstep_count --	
	}
	show_debug_message(footstep_count)
}

//Forms
if(transform_1){
	state = scr_tanglemane_move	
}

move_dir = point_direction(0, 0, x_dir, y_dir)


if(x_dir == 0 and y_dir == 0){
	hsp = 0
	vsp = 0
	move_dir = dir
} else {
	hsp = lengthdir_x(1, move_dir) * move_speed
	vsp = lengthdir_y(1, move_dir) * move_speed
}

//Set direction that player will be facing
if(vsp > 0){
	dir = 3*90
}

else if (vsp < 0) {
	dir = 1*90	
}

else if (hsp > 0){
	dir = 0*90	
}

else if (hsp < 0){
	dir = 2*90	
}

// DETERMINE PLAYER STATE

//Ranged Attack
if(key_power_attack && can_throw_tomahawk){
	image_index = 0
	mana -= 1
	state = scr_tomahawk_throw
}

if(key_aim){
	state = scr_player_aim	
}

//Basic Attack
if(key_attack && can_basic_attack){
	image_index = 0
	if(basic_attack_1){
		
		//play swing sfx (need to break this into function)
		audio_play_sound(sfx_tomahawk_slash,1,false)
		state = scr_player_basic_attack_2	
		
	} else {
		//play swing sfx
		audio_play_sound(sfx_tomahawk_slash,1,false)
		state = scr_player_basic_attack_1
	}
}
//Dash
if (key_dash && can_dash) {
	
	//Play roll sfx
	audio_play_sound(sfx_dodge_roll,1,false)

	dash_target_x = x + lengthdir_x(1, move_dir)*dash_dist
	dash_target_y = y + lengthdir_y(1, move_dir)*dash_dist
	dash_off_x = dash_target_x - x
	dash_off_y = dash_target_y - y
	image_index = 0
	state = scr_player_dash
	dashing = true
}

//Check for Sprint key
if(key_sprint && moving){
	move_speed = 1
	if(facing == 1){
		sprite_index = spr_player_walk_back	
	} else if(facing == -1){
		sprite_index = spr_player_walk_side	
	} else{
		sprite_index = spr_player_walk_front		
	}
} else {
	move_speed = 3
}

// Flip sprite depending on direction of movement
if(hsp > 0){
	image_xscale = 1
}
if(hsp < 0){
	image_xscale = -1	
}

//Horizontal Move and Collision
	
/**if (!place_meeting(x+hsp,y,obj_solid)){
	while(place_meeting(x+sign(hsp),y,obj_solid))
	{
		hsp = 0;
	}
	x += sign(hsp) * move_speed;
}

//Vertical Move and Collision
if (!place_meeting(x,y+vsp,obj_solid)){
	while(place_meeting(x,y+sign(vsp),obj_solid))
	{
		vsp = 0
	}
	y += sign(vsp) * move_speed;
}  **/

//Horizontal Collision

if(!place_meeting(x+hsp, y, obj_solid)){
	x += hsp
	hsp = 0
}

else {
	while(!place_meeting(x+sign(hsp), y, obj_solid) ){
			x += sign(hsp)
	}
	
	hsp = 0
}



//Vertical Collision
if(!place_meeting(x, y+vsp, obj_solid)){
	y += vsp
	vsp = 0
}

else {
	while(!place_meeting(x, y+sign(vsp), obj_solid) ){
			y += sign(vsp)
	}
	
	vsp = 0
}