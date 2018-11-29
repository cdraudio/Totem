/// @description Insert description here
// You can write your code in this editor

//Reset 3 jump attack sequence

if(!attacking){
	leap_frame = 0
	pause_timer = 0
	leap_num = 0

	//Set knockback direction
	knock_dir = point_direction(obj_player.x, obj_player.y, x, y);

	//Play hurt SFX
	audio_play_sound(sfx_tomahawk_impact,1,false)

	state = scr_tanglemane_boss_hurt
}





