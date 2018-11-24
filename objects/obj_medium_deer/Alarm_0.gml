/// @description Send deer to run state
image_speed = 1
if(obj_player.tanglemane){
	state = scr_deer_run1
} else {
	state = scr_deer_idle1
}