
if (surface_exists(surf)) {
    surface_set_target(surf);

    // The following three lines set the 'dark' overlay
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(0, 0, room_width, room_height, 0);

    // Setting the blend mode to 'subtract' allows hole cutting
    gpu_set_blendmode(bm_subtract);
    draw_set_color(c_white);
    
    // Draw circles in the overlay with player
	
	with (obj_player)
		draw_sprite_ext(spr_glow_effect,0,x,y,0.5,0.5,0,c_white,1)
		 
    with (obj_yellow_glow)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.25,0.25,0,c_yellow,1)
		 
	with (obj_blue_glow)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.25,0.25,0,c_white,1)

	with (obj_blue_glow_large)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),2,2,0,c_white,1)
		 
	with (obj_purple_light)
		draw_sprite_ext(spr_glow_effect,0,x,y,1,1,0,c_white,1)
		
	with (obj_tomahawk_projectile)
		draw_sprite_ext(spr_glow_effect,0,x,y,0.25,0.25,0,c_white,1)
	
	with (obj_clarity_orb)
		draw_sprite_ext(spr_glow_effect,0,x,y,0.1,0.1,0,c_white,1)
		 
	with (obj_water_plant_1)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.25,0.25,0,c_white,1)

	with (obj_water_plant_2)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.25,0.25,0,c_white,1)
		 
	with (obj_water_plant_3)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.75,0.75,0,c_white,1)
		 
	with (obj_tomahawk_hit_particle)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),0.1,0.1,0,c_white,1)
		 
	with (obj_yellow_glow_flash)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),obj_yellow_glow_flash.image_xscale,obj_yellow_glow_flash.image_yscale,0,c_white,1)
		 	
	with (obj_red_glow_flash)
         draw_sprite_ext(spr_glow_effect,0,x+random_range(-1,1),y + random_range(-1,1),obj_red_glow_flash.image_xscale,obj_red_glow_flash.image_yscale,0,c_red,1)
	/*with (obj_tomahawk_projectile)
		draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);*/
		
    // Reset all draw stuff
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
