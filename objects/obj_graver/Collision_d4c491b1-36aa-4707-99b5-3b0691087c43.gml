/// @description Insert description here
// You can write your code in this editor


//Move away from player if overlapping and not attacking
if(!obj_player.dashing){
	move_dir = 	point_direction(other.x, other.y, x, y)
	
	
	if(!place_meeting(x + lengthdir_x(other.move_speed, move_dir), y + lengthdir_y(other.move_speed, move_dir), obj_solid)){
		x += lengthdir_x(other.move_speed, move_dir)
		y+= lengthdir_y(other.move_speed, move_dir)
	}
}