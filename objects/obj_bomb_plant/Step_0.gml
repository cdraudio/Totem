/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player_hurt_box) || place_meeting(x,y,obj_player_hurt_box_2)){
	if(!ticking){
		ticking = true
	}	
}

if(ticking){
	count_down -= 1
}


if(count_down <= 0){
	instance_destroy()
}
