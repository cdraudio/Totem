//sprite_index = spr_enemy_death

max_die_frame = 2


if(!dying){

	die_dir = point_direction(obj_player.x, obj_player.y, x, y)
	die_frame = 0
	
	die_x = x + lengthdir_x(20, die_dir)
	die_y = y +lengthdir_y(20, die_dir)
	die_off_x = die_x - x
	die_off_y = die_y - y
	dying = true
	
	
}

else if (die_frame == max_die_frame){
	instance_destroy(self)
	instance_create_layer(x, y, "Instances", obj_enemy_dead)
}

else {
	
	x += die_off_x/max_die_frame
	y += die_off_y/max_die_frame
	path_position = (die_frame/max_die_frame)/2
	die_frame++
}