/// @description Blood Creation

// Set opacity and size
image_xscale = random_range(0.35,0.85) 
image_yscale = image_xscale
prev_scale = image_xscale
// Fading away?
fading = false

// Flying
flying = true

//Falling
falling_triggered = false
falling = false

//Grounded
grounded_triggered = false
grounded = false

//Max Distance
max_distance = random_range(3,10)

//Move Speed
move_speed = 4

//Direction
dir = point_direction(obj_player.x,obj_player.y,x+random_range(-1,1),y+random_range(-1,1))

//Depth on screen
depth = 5

