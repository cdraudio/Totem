/// @description Trigger dialogue on place meeting
/*if(global.pause)
	return */

if(!instance_exists(obj_text_controller3))
	new_dialogue(["Hello friends, what a nice day it is in the forest. I think I'll smack these rabbits around a bit. ","Please, dont hurt us!"], [spr_player_profile, spr_enemy_test_profile], [obj_player, obj_talking_rabbit], [])

/*instance_create_layer(0, 0, "Instances", obj_pause)