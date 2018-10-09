/// @description Trigger dialogue on place meeting
/*if(global.pause)
	return */
if(!triggered){
	triggered = true
	if(!instance_exists(obj_text_controller3))
		new_dialogue(["Watch out!"], [spr_player_profile, spr_enemy_test_profile], [obj_talking_rabbit], [])
}
/*instance_create_layer(0, 0, "Instances", obj_pause)