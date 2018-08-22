// Decrement alpha until destruction


if(alarm[0] < 0){
	alarm[0] = room_speed *100	
}
if(fading){	
	image_alpha -= 0.01
}

if(image_alpha <= 0){
	instance_destroy()	
}