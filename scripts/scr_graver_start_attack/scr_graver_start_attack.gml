
max_tele_frame = 5
pause_frame = 15
sprite_index = spr_graver_combat_idle
path_end()

num_frames = sprite_get_number(sprite_index)

if(tele_frame >= num_frames){
	image_index = num_frames-1	
}

else {
	image_index = tele_frame	
}

if (tele_frame == 0){
	
	tele_dir = point_direction(obj_player.x, obj_player.y, x, y)
	tele_length = 30

	tele_x = cos( degtorad(tele_dir) )*tele_length
	tele_y = sin( degtorad(tele_dir) )*tele_length


	target_x = obj_player.x
	target_y = obj_player.y

	dist_x = (target_x - x)*2
	dist_y = (target_y - y)*2

}


if(tele_frame == max_tele_frame + pause_frame){

	tele_frame = 0
	attacking = true
	state = scr_graver_attack
		
}

else if (tele_frame < max_tele_frame) {
	x += tele_x/max_tele_frame
	y -= tele_y/max_tele_frame
	tele_frame++
}

else {
	image_blend = c_white
	tele_frame++	
}
