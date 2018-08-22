/// Move towards player if player object exists
if (instance_exists(obj_player)){
	x += floor((obj_player.x - x)*0.3) ;
	y += floor((obj_player.y - y)*0.3) ;
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
	shake_intensity -= 8
	
	if (shake_intensity <= 0){
		shaking = false
	}	
}