/// @description Insert description here
// You can write your code in this editor

if(obj_player.y < y and  rectangle_in_rectangle(obj_player.x - obj_player.sprite_xoffset/4, obj_player.y - obj_player.sprite_yoffset/4, obj_player.x - obj_player.sprite_xoffset + obj_player.sprite_width/1.5,  obj_player.y - obj_player.sprite_yoffset + obj_player.sprite_height/1.5, x - sprite_xoffset, y - sprite_yoffset, x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height ) ){
	depth = obj_player.depth - 1
}

else {
	depth = obj_player.depth + 1
}