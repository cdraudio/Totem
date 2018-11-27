//Init move speed
hsp = move_speed
vsp = 0
image_speed = 1.5

sprite_index = spr_deer_large_run
step_count += 1

//Create dust trail
if(dust_count == 0){
	
	dust_trail = instance_create_layer(x,y,"Instances",obj_dust_trail)
	dust_trail.image_xscale = image_xscale * -1

	dust_trail.x = x
	dust_trail.y = y - 16
	
	dust_count = 20
}
	
//Reduce run trail creation cooldown
if(dust_count > 0){
	dust_count --
}

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