/// Inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_sprint = keyboard_check(vk_shift);
key_dash = keyboard_check_pressed(ord("N"));
key_attack = keyboard_check_pressed(ord("M"));
key_power_attack = keyboard_check_pressed(vk_tab);
transform_1 = keyboard_check_pressed(ord("1"));
key_aim = mouse_check_button(mb_left);
key_toggle_enemy_follow = keyboard_check(ord("P"))


// Key Mapping 
keyboard_set_map(ord("D"),vk_right);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("S"),vk_down);

// Check for Gamepad
if (gamepad_is_connected(0)) {
	key_right = gamepad_axis_value(0,gp_axislh) >= 0.5;
	key_left = gamepad_axis_value(0,gp_axislh) <= -0.5;
	key_up = gamepad_axis_value(0,gp_axislv) <= -0.5;
	key_down = gamepad_axis_value(0,gp_axislv) >= 0.5;
	key_sprint = gamepad_button_check(0,gp_shoulderrb);
	key_dash	= gamepad_button_check_pressed(0,gp_face1);
	key_attack	= gamepad_button_check_pressed(0,gp_face3);
	key_power_attack = gamepad_button_check_pressed(0,gp_face4);
	key_power_attack = gamepad_button_check_pressed(0,gp_shoulderlb);
	
	transform_1 = gamepad_button_check_pressed(0,gp_padu)
}

//Set moving
if(key_left || key_right || key_up || key_down){
	moving = true
	
	if(key_left){
		 if( !(key_down or key_up) and facing != -1)
		facing = -1
		x_dir = -1	
	}
	
	else if (key_right){
		 if( !(key_down or key_up) and facing != -1)
		facing = -1
		x_dir = 1	
	}
	
	else {
		facing = -1
		x_dir = 0	
	}
	
	if(key_up){
		if( !(key_left or key_right) and facing == -1)
		facing = 1
		y_dir = -1	
	}
	
	else if (key_down){
		if( !(key_left or key_right) and facing == -1)
		facing = 0
		y_dir = 1	
	}
	
	else {
		facing = -1
		y_dir = 0	
	}
	
} 

else {
	moving = false
	y_dir = 0
	x_dir = 0
}
