// Move towards direction
x += lengthdir_x(move_speed, shoot_direction);
y += lengthdir_y(move_speed, shoot_direction);

shoot_direction += 5

//Decrement lifepsan every tick
life_span -= 1

// Increase movespeed over time
//move_speed += 0.5

//Destroy object if lifespan < 0
if(life_span < 0){
	instance_destroy()
}

if(obj_player.image_xscale > 0){
	image_xscale = 1	
	image_angle += -35
} else {
	image_xscale = -1	
	image_angle += 35
}