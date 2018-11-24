//Init move speed
hsp = move_speed
vsp = 0
image_speed = 1.5

sprite_index = spr_deer_large_run
step_count += 1

//Collisions
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



//Vertical Collision
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

if(step_count >= 1000){
	instance_destroy()	
}