/// @description Insert description here
// You can write your code in this editor
image_alpha -= 0.005
if(image_alpha < 0){
	instance_destroy()	
}

x = obj_player.x - 600
y = obj_player.y - 600