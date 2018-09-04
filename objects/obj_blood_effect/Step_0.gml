// Decrement alpha until destruction


if(alarm[0] < 0){
	alarm[0] = room_speed *100	
}

if(alarm[1] < 0){
	alarm[1] = max_distance
}

if(fading){	
	image_alpha -= 0.01
}

if(image_alpha <= 0){
	instance_destroy()	
}

//Fly away from hurt box
if(flying){
	x += lengthdir_x(move_speed, dir)
	y += lengthdir_y(move_speed, dir)
} 

if(falling){
	x += lengthdir_x(move_speed/2, dir)
	y += lengthdir_y(move_speed, dir * -1)
	image_xscale = image_yscale/1.25

	
	if(alarm[2] < 0){
		alarm[2] = 2
	}

}

if(grounded){
	image_xscale = prev_scale
	image_yscale = image_xscale/2		
}


//Start round
// end flattened
