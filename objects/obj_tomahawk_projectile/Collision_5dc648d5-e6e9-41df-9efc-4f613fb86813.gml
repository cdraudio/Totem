//Screen Shake
obj_view.shaking = true
obj_view.shake_intensity = 8
has_hit = true

//End flight path
if(path_exists(fly_path) ){
	path_delete(fly_path)
	
	//Create impact effect
	instance_create_layer(other.x,other.y,"Instances",obj_tomahawk_impact)
}
path_end()