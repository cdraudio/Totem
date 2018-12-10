/// @description Set Wander
wander_point_x = random_range(-75,75)
wander_point_y = random_range(-75,75)

//Set Sprite direction
if(wander_point_x > 0){
	image_xscale = -1	
} else {
	image_xscale = 1	
}

if mp_grid_path(grid, wander_path, x, y,x+wander_point_x, y+wander_point_y, 1){
	path_start(wander_path, move_speed, 3, 0);
}