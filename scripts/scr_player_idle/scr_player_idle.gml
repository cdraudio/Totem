//Set default sprite
sprite_index = spr_player_idle

//Check if in_combat, use combat sprite
if(in_combat){
	sprite_index = spr_in_combat_idle
}