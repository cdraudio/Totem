/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_lalt)){
	zoom_level = 0.5
} else {
	zoom_level = 1	
}

//Get current size
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
rate = 0.175;

//Get new sizes by interpolating current and target zoomed size
new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

vpos_x = camera_get_view_x(view_camera[0]);
vpos_y = camera_get_view_y(view_camera[0]);

//change coordinates of camera so zoom is centered
/*new_x = lerp(vpos_x,vpos_x+(view_w - zoom_level * default_zoom_width)/2, rate);
new_y = lerp(vpos_y,vpos_y+(view_h - zoom_level * default_zoom_height)/2, rate);
