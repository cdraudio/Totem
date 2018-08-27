//Reset Variables
image_blend = c_white

//Get Inputs
script_execute(scr_configure_player_inputs)

// Default to walking sprite and idle if not moving
sprite_index = spr_player_idle

if(moving){
	sprite_index = spr_player_walk	
}

move_dir = point_direction(0, 0, x_dir, y_dir)


if(x_dir == 0 and y_dir == 0){
	hsp = 0
	vsp = 0
}
else{
	hsp = lengthdir_x(1, move_dir) * move_speed
	vsp = lengthdir_y(1, move_dir) * move_speed
}

// DETERMINE PLAYER STATE

//Rabbit Cannon
/*if(keyboard_check(vk_tab) && can_throw_tomahawk){
	state = scr_tomahawk_throw
}

//Basic Attack
if(key_attack && can_basic_attack){
	image_index = 0
	if(basic_attack_1){
		state = scr_player_basic_attack_2	
	} else {
		state = scr_player_basic_attack_1
	}
} */

//Dash
if (key_dash && can_dash) {
	// TODO(shaw): handle dir
	dash_target_x = x + lengthdir_x(1, move_dir)*dash_dist
	dash_target_y = y + lengthdir_y(1, move_dir)*dash_dist
	dash_off_x = dash_target_x - x
	dash_off_y = dash_target_y - y
	state = scr_player_dash
}

//Check for Sprint key
if(key_sprint && moving){
	sprite_index = spr_player_sprint
	move_speed = 3
} else {
	move_speed = 2
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
	while(!place_meeting(x+sign(hsp)*2, y, obj_solid) ){
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
	while(!place_meeting(x, y+sign(vsp)*2, obj_solid) ){
			y += sign(vsp)
	}
	
	vsp = 0
}