/// @description Execute State and get player inputs



// execute my state
image_speed = 1
script_execute(state)

if(hit_points <= 0){
	state = scr_player_dead	
}