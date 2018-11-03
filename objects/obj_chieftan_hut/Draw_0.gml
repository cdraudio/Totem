/// @description Insert description here
// You can write your code in this editor
if (highlight) {
	gpu_set_blendmode(bm_add);
	draw_sprite_stretched(spr_chieftan_hut,0,(x - sprite_xoffset)-2,(y - sprite_yoffset)-2,sprite_get_width(spr_chieftan_hut)+4,sprite_get_height(spr_chieftan_hut)+4)
	gpu_set_blendmode(bm_normal)
	draw_self();
} else {
	draw_self()	
}