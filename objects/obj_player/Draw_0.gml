/// @description Draw self and shadow\

if(tanglemane){
	if(facing == 1){
		draw_sprite_ext(spr_player_shadow,0,x,y+5,1.5,3.5,0,0,0.35)	
	} else if (facing == -1){
		draw_sprite_ext(spr_player_shadow,0,x,y+25,2.5,1.5,0,0,0.35)	
	} else {
		draw_sprite_ext(spr_player_shadow,0,x,y+5,1.5,3.5,0,0,0.35)	
	}

} else if(!tanglemane){
	draw_sprite_ext(spr_player_shadow,0,x,y+26,1,1,0,0,0.35)	
}

if(sprite_index == spr_tanglemane_transform_outro){
	draw_sprite_ext(spr_player_shadow,0,x,y+25,2.5,1.5,0,0,0.35)		
}

draw_self()


