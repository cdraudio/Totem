//Reset Variables
image_blend = c_white
image_speed = 1.25
tanglemane = true

//Get Inputs
script_execute(scr_configure_player_inputs)

// Default to walking sprite and idle if not moving
if(!moving){
	if(facing == 1){
		sprite_index = spr_tanglemane_idle_back
	} else if (facing == -1){
		sprite_index = spr_tanglemane_idle_side
	} else {
		sprite_index = spr_tanglemane_idle_front
	}
}

if(moving){
	//Create run trail
	if(dust_count == 0){
		 dust_trail = instance_create_layer(x,y,"Instances",obj_dust_trail)
		 dust_trail.image_xscale = (image_xscale * 2) * -1
		 dust_trail.image_yscale = (image_yscale * 2)
		 	if(facing == 1){
				//Back
				dust_trail.x = x
				dust_trail.y = y + 26
			} else if (facing == -1){
				//Side
				if(image_xscale > 0){
					dust_trail.x = x - 32
					dust_trail.y = y + 22
				} else {
					dust_trail.x = x + 32
					dust_trail.y = y + 22		
				}	
		
			} else {
				//Front
				dust_trail.x = x
				dust_trail.y = y - 22
			}
		dust_count = 20
	}
	
	//Reduce run trail creation cooldown
	if(dust_count > 0){
		dust_count --
	}
	
	if(facing == 1){
		sprite_index = spr_tanglemane_run_back
	} else if(facing == -1) {
		sprite_index = spr_tanglemane_run_side
	} else {
		sprite_index = spr_tanglemane_run_front
	}
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
if(key_power_attack && can_throw_tomahawk){
	
}

//Basic Attack
if(key_attack && can_basic_attack){
	image_index = 0
	state = scr_tanglemane_bite
}
//Dash
if (key_dash && can_dash) {
	// TODO(shaw): handle dir
	dash_target_x = x + lengthdir_x(1, move_dir)*dash_dist
	dash_target_y = y + lengthdir_y(1, move_dir)*dash_dist
	dash_off_x = dash_target_x - x
	dash_off_y = dash_target_y - y
	state = scr_player_dash
	dashing = true
}

//Check for Sprint key
if(key_sprint && moving){
	move_speed = 5
	image_speed = 2
} else {
	move_speed = 3.5
	image_speed = 1.25
}

// Flip sprite depending on direction of movement

if(hsp < 0){
	image_xscale = -1	
} else if(hsp > 0){
	image_xscale = 1
}

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