/// @description Draw self and shadow\

if(tanglemane){
	draw_sprite_ext(spr_player_shadow,0,x,y+25,2.5,1.5,0,0,0.35)	
} else if(!tanglemane){
	draw_sprite_ext(spr_player_shadow,0,x,y+25,1,1,0,0,0.35)	
}
draw_self()


