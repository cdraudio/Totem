/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_return)){
	obj_title_card.fade_in = false
	obj_title_card.fading = true
	
	obj_title_tent.fade_in = false
	obj_title_tent.fading = true
	
	instance_destroy(obj_title_particle_emitter)
	
	obj_title_press_start.fade_in = false
	obj_title_press_start.fading = false
	instance_destroy(obj_title_press_start)
	
	audio_sound_gain(music_title,0,5000)
	if(alarm[0] < 0){
		alarm[0] = room_speed*2	
	}
	
}