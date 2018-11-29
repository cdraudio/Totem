


if (hurt_frame < max_hurt_frame){
	image_blend = c_red
	x += lengthdir_x(6, knock_dir)
	y += lengthdir_y(6, knock_dir)
	hurt_frame ++
}

else{
	image_blend = c_white
	state = scr_tanglemane_boss_approach
	hurt_frame = 0
}


