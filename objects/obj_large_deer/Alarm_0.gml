/// @description Send deer to run state
image_speed = 1
if(obj_player.tanglemane){
	state = scr_deer_run2
} else {
	state = scr_deer_idle2
}