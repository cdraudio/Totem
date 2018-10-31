/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha)
if(instance_exists(owner)){
	max_health = owner.max_hit_points
	hp = owner.hit_points

	for(i = 0; i < max_health; i++){
		sub = 1
	
		if(i == 0){
			sub = 0	
		}
	
		else if (i == max_health-1){
			sub = 2	
		}
	
		//These bars are 7 pixels high
		draw_sprite_stretched(spr_clarity_bar, sub, (owner.x + 11*(i))-16, owner.y+28, 11, 7  )	
	}

	for(i = 0; i < hp; i++){
		draw_sprite_stretched(spr_clarity_fill_red, 0, 1+ (owner.x+11*(i))-16, owner.y+30, 8,3)
	}
} else {
	instance_destroy()	
}
