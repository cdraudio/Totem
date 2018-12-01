//Init move speed
hsp = move_speed
vsp = 0

sprite_index = spr_brute_walk_side
step_count += 1

if(distance_to_object(obj_player) < 125){
	image_index = 0
	dust_count = 73
	state = scr_brute_idle
}
//Create dust trail
if(dust_count == 0){
	
	dust_trail = instance_create_layer(x,y,"Instances",obj_dust_trail)
	dust_trail.image_xscale = (image_xscale * 3) * -1
	dust_trail.image_yscale = image_xscale

	dust_trail.x = x
	dust_trail.y = y + 32
	
	dust_count = 45
	
	obj_view.shaking = true
	obj_view.shake_intensity = 10
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

//XScaling
if(obj_player.x < x ){
	image_xscale = -1	
} else {
	image_xscale = 1	
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

/*if(step_count >= 1000){
	instance_destroy()	
}