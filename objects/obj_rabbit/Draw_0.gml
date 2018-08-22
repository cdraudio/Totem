/// @description Insert description here
// You can write your code in this editor

//Make the jumping look nice
jump_height = -15
scale_amount = .20
//Amount of scale and offset is based on position in path.
jump_offset = sin( pi*path_position ) *jump_height
scale_offset = sin( pi*path_position ) *scale_amount


draw_sprite_ext(spr_player_shadow, 0, x, y+sprite_height/4, image_xscale/2+sign(image_xscale)*scale_offset, .5+scale_offset, 0, image_blend, .5 )
draw_sprite_ext(sprite_index, image_index, x, y+jump_offset, image_xscale+sign(image_xscale)*scale_offset, 1+scale_offset, 0, image_blend, 1 )

/**if(path_exists(path_to_player) ){
	draw_path(path_to_player, x, y, 0)
}**/

