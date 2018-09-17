/// @description Insert description here
// You can write your code in this editor


screen_width = display_get_gui_width()

screen_height = display_get_gui_height()

draw_set_alpha(1)
draw_set_color(make_color_rgb(50, 50, 50))

draw_rectangle(50, screen_height - 60, screen_width/4, screen_height - 20, false)



red_bar_length = screen_width/4-5 - (((screen_width/4-60)/obj_player.max_hit_points)*(obj_player.max_hit_points-obj_player.hit_points) ) - 55

if (red_bar_length > white_bar_length){
	
	white_bar_length = red_bar_length	
}

else{
	
	if(abs(white_bar_length-red_bar_length) < 3){
		white_bar_length = red_bar_length
		hurting = false
	}
	
	else {
		if(hurting == false){
			hurting = true
			hurt_timer = 0
		}
		
		else{
			
			if(hurt_timer < hurt_time_limit){
				hurt_timer += delta_time
			}
			
			else{
				white_bar_length -= abs(white_bar_length - red_bar_length)/10
				
			}
		}
	}
	
}

draw_set_color(c_white)

draw_rectangle(55, screen_height - 55, 55+white_bar_length, screen_height - 25, false)

draw_set_color(c_red)

draw_rectangle(55, screen_height - 55, screen_width/4-5 - (((screen_width/4-60)/obj_player.max_hit_points)*(obj_player.max_hit_points-obj_player.hit_points) ), screen_height - 25, false)

center_x_h = (screen_width/4-50)/2 + 50
cenetr_y_h = (screen_height-(43))

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color(c_white)
draw_text(center_x_h, cenetr_y_h, string(obj_player.hit_points) + "/" +  string(obj_player.max_hit_points) )


