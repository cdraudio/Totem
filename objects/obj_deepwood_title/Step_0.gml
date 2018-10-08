/// @description Insert description here
// You can write your code in this editor

if(fading){
	max_alpha -= 0.01
	draw_set_alpha(max_alpha)
}

if(max_alpha <= 0){
	instance_destroy()	
}

if(fade_in){
	starting_alpha += 0.01	
	draw_set_alpha(starting_alpha)
}

if(starting_alpha >= 1){
	fade_in = false
	alarm_hit = true
	
	if(alarm[0] < 0){
		alarm[0] = 120	
	}
}