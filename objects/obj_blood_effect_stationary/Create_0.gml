/// @description Blood Creation

// Set opacity and size
image_xscale = random_range(0.25,0.75) 
image_yscale = image_xscale

// Fading away?
fading = false

// Flying
flying = true

//Max Distance
max_distance = random_range(1,8)

//Move Speed
move_speed = 3
//Direction
dir = point_direction(obj_player.x,obj_player.y,x,y)

//Depth on screen
depth = 5