//sprite_index = spr_graver_dead

sprite_index = spr_graver_dying
image_speed = 1
max_die_frame = 20

if(!dying){
	die_dir = point_direction(obj_player.x, obj_player.y, x, y)
	die_frame = 0
	die_x = x + lengthdir_x(30, die_dir)
	die_y = y +lengthdir_y(30, die_dir)
	die_off_x = die_x - x
	die_off_y = die_y - y
	dying = true
}

else if (die_frame == max_die_frame){
	dead_body = instance_create_layer(x, y, "Instances", obj_graver_dead)
	dead_body.image_xscale = image_xscale
	instance_destroy(self)
}

else {
	x += die_off_x/max_die_frame
	y += die_off_y/max_die_frame
	path_position = (die_frame/max_die_frame)/2
	die_frame++
}