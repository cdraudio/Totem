// Decrement alpha until destruction


if(alarm[0] < 0){
	alarm[0] = room_speed *100	
}

if(alarm[1] < 0){
	alarm[1] = room_speed/5
}

if(fading){	
	image_alpha -= 0.01
}

if(image_alpha <= 0){
	instance_destroy()	
}



//Start round
// end flattened
