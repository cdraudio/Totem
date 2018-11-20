
if(facing == DIR.RIGHT){
	sprite_index = spr_tanglemane_idle_side;
	image_xscale = 1
}

else if(facing == DIR.LEFT){
	sprite_index = spr_tanglemane_idle_side;
	image_xscale = -1
}

else if (facing == DIR.UP){
	sprite_index = spr_tanglemane_idle_back;
	image_xscale = 1
}

else if (facing == DIR.DOWN){
	sprite_index = spr_tanglemane_idle_front;
	image_xscale = 1
}