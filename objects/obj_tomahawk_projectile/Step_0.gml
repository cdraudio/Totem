// Move towards direction
x += lengthdir_x(move_speed, shoot_direction);
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
}

if(obj_player.image_xscale > 0){
	image_angle += -35
} else {
	image_angle += 35
}