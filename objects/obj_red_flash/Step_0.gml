/// @description Insert description here
// You can write your code in this editor

//Grow in size
if(expanding){
	starting_size += 8
	image_xscale = starting_size
	image_yscale = starting_size
	
	if(starting_size >= 75){
		image_alpha -= 0.01
		expanding = false
		shrinking = true
	}
}

//Shrink until destroy self
if(shrinking){
	starting_size -= 6
	image_xscale = starting_size
	image_yscale = starting_size	
}

if(starting_size <= 0){
	instance_destroy()	
}

