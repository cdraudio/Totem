sprite_index = spr_deer_medium_idle

if(distance_to_object(obj_player) <= 200){
	image_index = 0
	state = scr_deer_alert1
}