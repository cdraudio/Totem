/// @description Insert description here
// You can write your code in this editor
bright_blue = make_color_rgb(168, 255, 249)

with (obj_player)
		 if(state == scr_player_transforming){
			draw_sprite_ext(spr_glow_effect,0,x,y,0.75,0.75,0,c_green,0.25)
		 } else {
			draw_sprite_ext(spr_glow_effect,0,x,y,0.5,0.5,0,c_white,0.75) 
		 }
		 
with (obj_yellow_glow)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_yellow,0.75)
		 
with (obj_blue_glow)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_aqua,0.75)

with (obj_blue_glow_large)
		 draw_sprite_ext(spr_glow_effect,0,x,y,2,2,0,c_aqua,0.75)
		 
with (obj_purple_light)
		 draw_sprite_ext(spr_glow_effect,0,x,y,1,1,0,make_color_rgb(240, 219, 255),0.5)

with (obj_tomahawk_projectile)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,make_color_rgb(240, 219, 255),0.5)

with (obj_clarity_orb)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,make_color_rgb(240, 219, 255),0.5)

with (obj_water_plant_1)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_aqua,0.75)

with (obj_water_plant_2)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_aqua,0.75)
		 
with (obj_water_plant_3)
		 draw_sprite_ext(spr_glow_effect,0,x,y,0.75,0.75,0,c_aqua,0.75)

with (obj_red_flash)
        draw_sprite_ext(spr_glow_effect,0,x,y,obj_red_flash.image_xscale,obj_red_flash.image_yscale,0,c_red,obj_red_flash.image_alpha)	
		 
with (obj_white_flash)
        draw_sprite_ext(spr_glow_effect,0,x,y,obj_white_flash.image_xscale,obj_white_flash.image_yscale,0,c_white,obj_white_flash.image_alpha)	
		  
with (obj_large_deer)
		draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.5,0.5,0,c_aqua,0.5)
			
with (obj_medium_deer)
		draw_sprite_ext(spr_glow_effect,0,x + 5 + random_range(-1,1),y + random_range(-1,1),0.3,0.3,0,c_aqua,0.25)		