//Arguments for script
target = argument0

//Move to target

/* move_x = x + lengthdir_x(20, target.x)
move_y = y + lengthdir_y(20, target.y)

x += move_x
y += move_y
*/

x = target.x
y = target.y

//Leave state
if(place_meeting(x,y,obj_grapple_node)){
	state = scr_player_move	
}