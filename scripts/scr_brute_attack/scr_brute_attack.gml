//Toggle can attack
can_basic_attack = false
hsp = 0
vsp = 0

sprite_index = spr_brute_slam_side
path_end()

//Attack cooldown
	if (alarm[2] == -1){
		alarm[2] = room_speed * 3
	}
	
//Screenshake
if(floor(image_index) == 19){
	obj_view.shaking = true
	obj_view.shake_intensity = 10
}
	
//Horizontal Collision
if(hsp != 0){
if(!place_meeting(x+hsp, y, obj_solid)){
	x += hsp
	hsp = 0
}

else {
	while(!place_meeting(x+sign(hsp), y, obj_solid) ){
			x += sign(hsp)
	}
	
	hsp = 0
}
}


//Vertical Collision
if(vsp != 0){
if(!place_meeting(x, y+vsp, obj_solid)){
	y += vsp
	vsp = 0
}

else {
	while(!place_meeting(x, y+sign(vsp), obj_solid) ){
			y += sign(vsp)
	}
	
	vsp = 0
}
}