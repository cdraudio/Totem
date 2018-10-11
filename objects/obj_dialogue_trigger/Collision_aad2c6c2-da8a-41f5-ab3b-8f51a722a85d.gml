/// @description Trigger dialogue on place meeting
/*if(global.pause)
	return */
if(!triggered){
	triggered = true
	if(!instance_exists(obj_text_controller3))
		new_dialogue(["Hey what a nice day. I sure hope nobody hits us with a tomahawk. That would be bad"], [spr_player_profile, spr_enemy_test_profile], [obj_talking_rabbit], [])
}
/*instance_create_layer(0, 0, "Instances", obj_pause)