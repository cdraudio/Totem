//Slowmo mode for Nate to test animations
if(keyboard_check_pressed(vk_numpad0)){
	if(full_speed){
		room_speed = 30
		full_speed = false
		half_speed = true
	} else if(half_speed){
		room_speed = 1
		half_speed = false
		debug_speed = true
	} else if(debug_speed){
		room_speed = 60
		debug_speed = false
		full_speed = true
	}
}