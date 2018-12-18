/// @description Insert description here
// You can write your code in this editor
if(!triggered && distance_to_object(obj_player) < 500){
	scr_switch_camera_focus(self,200)
	triggered = true
}