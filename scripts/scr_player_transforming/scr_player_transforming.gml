depth = -50

//Trigger zoom
obj_zoom_controller.zoom_in = true

//Screenshake
if(sprite_index != spr_tanglemane_transform_outro){
	obj_view.shaking = true
	obj_view.shake_intensity = 2.5
}

//Make sure effects only play once
if(!started_transform){
	sprite_index = spr_player_transform_intro
	transform_fx = instance_create_layer(x,y,"Instances",obj_player_transform)
	started_transform = true
}

//obj_player animation_end event will take care of the rest