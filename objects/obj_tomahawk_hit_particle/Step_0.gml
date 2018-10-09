/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.085

if(image_alpha <= 0){
	instance_destroy()	
}

x += lengthdir_x(move_speed, dir)
y += lengthdir_y(move_speed, dir)