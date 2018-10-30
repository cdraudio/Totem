/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("L"))){
	obj_player.mana--	
	
	if(obj_player.mana < 0){
		obj_player.mana = obj_player.max_mana	
	}
}


if(keyboard_check_pressed(ord("K"))){
	obj_player.clarity_count--	
	
	if(obj_player.clarity_count < 0){
		obj_player.clarity_count = obj_player.max_clarity	
	}
}

hearts = obj_player.max_hit_points


draw_set_alpha(1)

//Health
var xx;
for(xx = 0; xx<hearts; xx++){
	
	if(xx > obj_player.hit_points -1){
		draw_sprite_stretched(spr_empty_heart, 0, 20 + 40*xx, 20, 36 , 42 )	
	}
	
	else{
		draw_sprite_stretched(spr_full_heart, 0, 20+ 40*xx, 20, 36 , 42 )
	}
}	

//Mana
var mana = obj_player.max_mana - obj_player.mana

draw_sprite_stretched(spr_mana_icon, 0, 20, 70, 42, 42)


if(mana == 12) {
	
	
}

else{
	draw_sprite_stretched(spr_mana, 11-mana, 60, 70, 300, 42 )
}
	
	
//Clarity

var max_clar = obj_player.max_clarity
var clar = obj_player.clarity_count

draw_sprite_stretched(spr_clarity_icon, 0, 20, 120, 42, 30)

for(var xx = 0; xx < max_clar; xx++){
	var sub = 1
	
	if(xx ==0){
		sub = 0	
	}
	
	else if (xx == max_clar-1){
		sub = 2	
	}
	
	//These bars are 7 pixels high
	draw_sprite_stretched(spr_clarity_bar, sub, 75+33*(xx), 125, 33, 7*3  )	
}

for(var xx = 0; xx < clar; xx++){
	draw_sprite_stretched(spr_clarity_fill, 0, 78+33*(xx), 130, 24, 3*3  )
	
}

	
//Totem Icon & Count
draw_sprite_stretched(spr_totem_count, 0, view_wport[0]-120, 20, 32, 64)
draw_sprite_stretched(spr_count_0, 0, view_wport[0]-88, 20, 64, 64)
draw_sprite_stretched(spr_count_1, 0, view_wport[0]-56, 20, 64, 64)
