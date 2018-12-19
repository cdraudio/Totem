// Move towards direction
/*x += lengthdir_x(move_speed, shoot_direction);
y += lengthdir_y(move_speed, shoot_direction);


//Decrement lifepsan every tick
life_span -= 1

// Increase movespeed over time
//move_speed += 0.5

//Destroy object if lifespan < 0
if(distance_to_object(obj_player) > max_distance*image_xscale){
	can_return = true
}

if(can_return){
	shoot_direction = point_direction(x, y, obj_player.x, obj_player.y)
	if(place_meeting(x,y,obj_player)){
		instance_destroy()
	}
}(*/

if(path_position >= .5 and place_meeting(x, y, obj_player) ) {

		//Why would they do this to us?
		//Pick delete or destroy >: (
		if(path_exists(fly_path)){
			path_delete(fly_path)
		}
		obj_view.shaking = true
		obj_view.shake_intensity = 5
		instance_destroy()
}

else if (has_hit){
	x += sign(obj_player.x - x)*6
	y += sign(obj_player.y - y)*6
	
	if(place_meeting(x, y, obj_player) ){
		//path_delete(fly_path)
		obj_view.shaking = true
		obj_view.shake_intensity = 5
		instance_destroy()
		
	}
}

else if (returning){

		
	move_speed = 18
	
	move_dir = point_direction(x, y, obj_player.x, obj_player.y)
	move_x = lengthdir_x(move_speed, move_dir)
	move_y = lengthdir_y(move_speed, move_dir)
	
	x += move_x
	y += move_y
	
}


else{
	
	if(path_position >= .85){
		returning = true
		
		//Play reverse throw SFX
		//audio_stop_sound(sfx_tomahawk_throw_forward)
		path_end()
	}
	
	/*if(path_position > .75){
		num = path_get_number(fly_path)
		path_change_point(fly_path, num-1, obj_player.x, obj_player.y, 0)
		path_set_kind(fly_path, 1 )
		path_position += abs(path_position-.500)/80 + .01
	}*/
	
	
	else {
		//Play SFX
		path_position += abs(path_position-.500)/20 + .01
	}
}

if(obj_player.image_xscale > 0){
	image_angle += -35
} else {
	image_angle += 35
}

//Create light trail
if(trail_count <= 0){
	trail = instance_create_layer(x,y,"Instances",obj_tomahawk_trail)
	trail.image_xscale = image_xscale
	trail.image_yscale = image_yscale
	trail.image_angle = image_angle
	trail_count  = 3
}

trail_count --


//Create Particles
instance_create_layer(x+random_range(-5,5),y + random_range(-5,5),"Instances",obj_tomahawk_particle)