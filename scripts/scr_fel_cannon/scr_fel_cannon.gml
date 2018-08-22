//Toggle cooldown
can_fel_cannon = false

//Create rabbit at player location
if(!instance_exists(obj_tomahawk_projectile)){
	instance_create_layer(x,y + 10,"Instances",obj_tomahawk_projectile)
	
	//Screen Shake
	obj_view.shaking = true	
	obj_view.shake_intensity = 10
	
	
	//Push player back
	if(image_xscale == 1){
		x -= 1
	}

	if(image_xscale == -1) {
		x += 1
	}
}

if(alarm[4] < 0){
	alarm[4] = room_speed	
}

state = scr_player_move
//Exit state if tab is not pressed
if(!keyboard_check(vk_tab)){
	state = scr_player_move	
}

