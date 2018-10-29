/// @description Insert description here
// You can write your code in this editor


hearts = obj_player.max_hit_points


draw_set_alpha(1)


var xx;
for(xx = 0; xx<hearts; xx++){
	
	if(xx > obj_player.hit_points -1){
		draw_sprite_stretched(spr_empty_heart, 0, 20 + 40*xx, 20, 36 , 42 )	
	}
	
	else{
		draw_sprite_stretched(spr_full_heart, 0, 20+ 40*xx, 20, 36 , 42 )
	}
}	


draw_sprite_stretched(spr_totem_count, 0, view_wport[0]-120, 20, 32, 64)
draw_sprite_stretched(spr_count_0, 0, view_wport[0]-88, 20, 64, 64)
draw_sprite_stretched(spr_count_1, 0, view_wport[0]-56, 20, 64, 64)
