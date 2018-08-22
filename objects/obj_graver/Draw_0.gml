/// @description Insert description here
// You can write your code in this editor



draw_sprite_ext(spr_player_shadow, 0, x, y+sprite_height/4, image_xscale/2+sign(image_xscale), .5, 0, image_blend, .5 )
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, image_blend, 1 )


if(path_exists(path_to_player)){
	draw_path(path_to_player, x, y, 1)
}
/**if(path_exists(path_to_player) ){
	draw_path(path_to_player, x, y, 0)
}**/

