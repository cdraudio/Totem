// Move towards direction
x += lengthdir_x(move_speed, shoot_direction);
y += lengthdir_y(move_speed, shoot_direction);

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
	image_angle += -45
} else {
	image_xscale = -1	
	image_angle += 45
}