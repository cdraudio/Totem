/// @description Insert description here
// You can write your code in this editor
//draw_sprite(pic, 0, 0, 0)
if(paused)
{
    if(surface_exists(pause_surface))
    {
		draw_sprite_ext(screen_shot,0,obj_view.x - 241,obj_view.y - 181,0.25,0.25,0,c_white,1)
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_rectangle(0, 0, room_width, room_height, 0);
        surface_set_target(pause_surface);
        surface_reset_target();
        draw_surface(pause_surface, view_wport[0], view_hport[0]);
    }
    else
    {
        pause_surface = surface_create(view_wport[0], view_hport[0]);
        surface_set_target(pause_surface);
        draw_clear_alpha(c_black, 1);
        surface_reset_target();
    }
}

		draw_set_alpha(0.25);
