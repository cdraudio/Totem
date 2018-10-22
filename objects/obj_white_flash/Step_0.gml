/// @description Insert description here
// You can write your code in this editor

//Grow in size
if(expanding){
	starting_size += 2
	image_xscale = starting_size
	image_yscale = starting_size
	
	image_alpha = (starting_size) / 100000
	if(starting_size >= 75){
		instance_destroy()
	}
}

