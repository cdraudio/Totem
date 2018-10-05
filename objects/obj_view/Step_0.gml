/// Move towards player if player object exists
if (instance_exists(obj_player)){
	//x += floor((obj_player.x - x)*0.3) ;
	//y += floor((obj_player.y - y)*0.3) ;

	//Camera position based on players direction
	if(obj_player.facing == -1){
		if(obj_player.image_xscale > 0){
			target_x = obj_player.x + 50
			target_y = obj_player.y
		} else {
			target_x = obj_player.x - 50
			target_y = obj_player.y	
		}
		
	} else if(obj_player.facing == 1){
		target_x = obj_player.x
		target_y = obj_player.y - 50	
	} else if(obj_player.facing == 0){
		target_x = obj_player.x
		target_y = obj_player.y + 50		
	}
	
	//Move towards player smoothly
	if(abs(target_x-x)< 1 and target_x != x){
		x =  target_x	
	}
	
	else{
		x += (target_x - x)/20	
	}
	
	if(abs(target_y-y)< 1 and target_y != y){
		y =  target_y	
	}
	
	else{
		y += (target_y - y)/20	
	}
}

//Test screen shake with right shift
if(keyboard_check(vk_lcontrol)){
	shaking = true	
	shake_intensity = 25
}

//Zoom out camera
if(keyboard_check(vk_backspace)){
	view_visible[0] = false
	view_visible[1] = true
} else {
	view_visible[0] = true
	view_visible[1] = false
}

// If shaking is true, shake in random direction by shakeIntensity
if (shaking){
    x += choose(random(shake_intensity), random(-shake_intensity));
    y += choose(random(shake_intensity), random(-shake_intensity));
	shake_intensity -= 1
	
	if (shake_intensity <= 0){
		shaking = false
	}	
}