/// @description Insert description here
// You can write your code in this editor
if(fading){
	image_alpha -= 0.5	
}

if(image_alpha <= 0){
	instance_destroy()	
}

if(alarm[0] < 0){
	alarm[0] = 120	
}