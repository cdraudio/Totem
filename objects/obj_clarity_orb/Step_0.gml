/// @description Insert description here
// You can write your code in this editor

//Move towards player
if(distance_to_object(obj_player) < 10 && collectable && obj_player.clarity_count <= obj_player.max_clarity ){
	shoot_direction = point_direction(x, y, obj_player.x, obj_player.y)
	x += lengthdir_x(move_speed, shoot_direction);
	y += lengthdir_y(move_speed, shoot_direction);
}

//Get absorbed by player
if(place_meeting(x,y,obj_player)){
	if(obj_player.clarity_count <= obj_player.max_clarity){
		obj_player.clarity_count += 1
		instance_destroy()	
	}
	show_debug_message(obj_player.clarity_count)
}

//Set collectable after pause
if(alarm[0] < 0){
	alarm[0] = room_speed/2	
}

//Up Alpha
image_alpha += 0.05