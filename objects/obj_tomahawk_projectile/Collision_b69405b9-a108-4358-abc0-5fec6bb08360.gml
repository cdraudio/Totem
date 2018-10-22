/// @description Insert description here
// You can write your code in this editor

//Screen Shake
obj_view.shaking = true
obj_view.shake_intensity = 8
has_hit = true

//End flight path
if(path_exists(fly_path) ){
	path_delete(fly_path)
}
path_end()