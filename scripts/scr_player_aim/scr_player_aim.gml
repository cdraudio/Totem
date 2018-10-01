//Freeze movement and change direction based on mouse position


if(facing == 1){
	sprite_index = spr_player_aim_back
} else if (facing == -1){
	sprite_index = spr_player_aim_side	
} else if(facing == 0){
	sprite_index = spr_player_aim_front	
}

moving = false
if(mouse_x < x){
	image_xscale = -1
} else {
	image_xscale = 1	
}


//Direction
move_dir = point_direction(x, y, mouse_x, mouse_y);



//Facing
if( (move_dir > 0 && move_dir < 45) or (move_dir>315 && move_dir < 361)  ){
	facing = -1
} else if(move_dir < 135 && move_dir > 45){
	facing = 1
} else if(move_dir >225  && move_dir < 315){
	facing = 0
} else if(move_dir > 135 && move_dir < 225){
	facing = -1	
}

//Return to move state on key release
if(mouse_check_button_released(mb_left)){
	state = scr_tomahawk_throw
}