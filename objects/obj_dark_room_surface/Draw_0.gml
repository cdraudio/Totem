/// @description Insert description here
// You can write your code in this editor
bright_blue = make_color_rgb(168, 255, 249)

with (obj_player)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.5,0.5,0,c_white,0.75)
		 
with (obj_light_shroom)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_yellow,0.75)

with (obj_purple_light)
		 draw_sprite_ext(spr_glow_effect,0,x,y,1,1,0,make_color_rgb(240, 219, 255),0.5)

with (obj_tomahawk_projectile)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,make_color_rgb(240, 219, 255),0.5)