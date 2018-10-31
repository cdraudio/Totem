/// @description Insert description here
// You can write your code in this editor
if(alpha > 0){
	alpha -= 0.01
}

if(instance_exists(owner)){
	if(owner.hurt_frame > 0){
		alpha = 1	
	}
}

draw_set_alpha(alpha)

