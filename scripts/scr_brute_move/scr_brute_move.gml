//Init move speed
hsp = move_speed
vsp = 0

sprite_index = spr_brute_walk_side
step_count += 1

//Create dust trail
if(floor(image_index) == 1 || floor(image_index) == 10){
	if(distance_to_object(obj_player) <= aggro_range){
		obj_view.shaking = true
		obj_view.shake_intensity = 7
	}
}

if(dust_count == 0){
	
	dust_trail = instance_create_layer(x,y,"Instances",obj_dust_trail)
	dust_trail.image_xscale = (image_xscale * 3) * -1
	dust_trail.image_yscale = image_xscale

	dust_trail.x = x
	dust_trail.y = y + 64
	
	dust_count = 45
}
	
//Reduce run trail creation cooldown
if(dust_count > 0){
	dust_count --
}

//Delete Old Path First to Avoid Memory Leak
//Only make a new path if none exist or if we are done with the current path
image_speed = 1.5
image_blend = c_white
player_height = sprite_get_height(obj_player.sprite_index)
player_width = sprite_get_width(obj_player.sprite_index)

path_num = path_get_number(path_to_player)
tmp_dist = distance_to_object(obj_player)

path_time += delta_time


target_x = obj_player.x
target_y = obj_player.y-30

if (target_x < x){
	if(mp_grid_get_cell(grid, (target_x + 100)/32, target_y/32) == 0){
		target_x = target_x +  100
	}
}

else{
	if(mp_grid_get_cell(grid, (target_x - 100)/32, target_y/32) == 0){
		target_x = target_x - 100
	}
}



//If player within a certain range then execute attack script
if( point_distance(target_x, target_y, x, y ) < 10   && can_basic_attack == true){
	path_end()
	if(path_exists(path_to_player)){
		path_delete(path_to_player)
	}
	path_position = 0
	tele_frame = 0
	image_index = 0
	state = scr_brute_attack
	return
}

//If we are at end of path and need a new one
//if (distance_to_object(obj_player) > focus_dist and (path_position > .90 or path_get_number(path_to_player)*path_position > 3 ) ){
if (distance_to_object(obj_player) > focus_dist and (path_position >= .90 or (path_num*path_position > 2)  ) ) {	
	
	path_end()
	if(path_exists(path_to_player)){
		path_delete(path_to_player)
	}
	path_time = 0
	tmp_dir = point_direction(x, y, target_x, target_y)
	
	dist = point_distance(x, y, target_x, target_y)
	
	local_x = (target_x-x)/2 + x + irandom_range(-dist/8, dist/8)
	local_y = (target_y-y)/2 + y + irandom_range(-dist/8, dist/8)
	
	path_to_player = path_add();
	
	if(mp_grid_get_cell(grid, floor(local_x/32), floor(local_y/32) ) == 0 ){
		
		has_path = mp_grid_path(grid, path_to_player, x, y, local_x, local_y, 1)
	}
	
	else{
		has_path = mp_grid_path(grid, path_to_player, x, y, target_x, target_y + player_height/4, 1)
	}
	

	path_position = 0
	can_jump = false
	//Set path to be smooth
	path_set_kind(path_to_player, 1)
	
	path_start(path_to_player, move_speed, 0, 0);

	
	
}

//If we aare chasing player and need a new path
else if(!path_exists(path_to_player) and distance_to_object(obj_player) < aggro_range){
	
	/*if(path_exists(path_to_player)){
		path_delete(path_to_player)	
	}*/
	
	path_time = 0
	path_to_player = path_add();
	has_path = mp_grid_path(grid, path_to_player, x, y, target_x, target_y+ player_height/4, 1)
	path_position = 0
	can_jump = false
	
	//Set path to be smooth
	path_set_kind(path_to_player, 1)

	//Where is the next point?
	path_point_x = path_get_point_x(path_to_player, path_get_number(path_to_player)-1 )
	path_point_y = path_get_point_y(path_to_player, path_get_number(path_to_player)-1 )

	//get angle of direction
	angle = point_direction(x, y, path_point_x , path_point_y  )

	//Random offset
	offset = irandom(jump_length)  ;

	//Offeset in the direction we are traveling
	offset_x = abs(offset *sin(degtorad(angle) ) )
	offset_y = abs(offset *cos( degtorad(angle) ) )

	sign_x = sign(path_point_x - x)
	sign_y = sign(path_point_y - y)
	
	if(mp_grid_get_cell(grid, floor(path_point_x + offset_x*sign_x)/32, floor(path_point_y + offset_y*sign_y)/32) != -1 && distance_to_object(obj_player) > jump_length ) {

		path_change_point(path_to_player, path_get_number(path_to_player)-1, path_point_x + offset_x*sign_x, path_point_y - offset_y * sign_y, 3 )
	}
	//Set speed so each jump takes same amount of time
	path_start(path_to_player, move_speed, 0, 0);


}

//If we are close enough to player to start coming right for them
else if (distance_to_object(obj_player) <= focus_dist) {

	path_end()
	if(path_exists(path_to_player)){
		path_delete(path_to_player)
	}
	path_to_player = path_add()
	has_path = mp_grid_path(grid, path_to_player, x, y, obj_player.x, obj_player.y+ player_height/4, 1)
	
	path_start(path_to_player, move_speed, 0, 0)
}

if(place_meeting(x, y, obj_player) ){
	path_end()
	path_delete(path_to_player)	
}


//Check to see if player is out of range, disengage to idle state
//Add a little tolerance to avoid flip flopping states
if(distance_to_object(obj_player) > aggro_range+10 or !has_path){
	path_end()
	
	if(path_exists(path_to_player)){
		path_delete(path_to_player)
	}
	state = scr_brute_idle
	sprite_index = spr_brute_idle_side
	wandering = false

}

//Flip Sprite depending on relative position to player
if(obj_player.x < x){
	image_xscale = -1
} else {
	image_xscale = 1
}
