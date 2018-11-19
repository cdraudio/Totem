depth = -50

if(!started_transform){
	sprite_index = spr_player_transform_intro
	transform_fx = instance_create_layer(x,y,"Instances",obj_player_transform)
	started_transform = true
}

//obj_player animation_end event will take care of the rest