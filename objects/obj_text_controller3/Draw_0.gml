//draw_set_font(fnt_main)
//draw_rectangle_color(x-50,y-20,x+250,y+40,c_black,c_black,c_black,c_black,false)
//draw_rectangle(x-50,y-20,x+250,y+40,true)
//draw_sprite(spr_player_profile,0,x-55,y-25)
//draw_text(x, y, message_draw); //draw the text at the coordinates






tmp_x = objects[current_message].x //- width/2
tmp_y = objects[current_message].y //- 300



frameStart = frame*3

finalStr = lines[frameStart]

if(frameStart+1 <= total_lines){
	finalStr += lines[frameStart+1] 
}

if(frameStart+2 <= total_lines){
	finalStr +=	lines[frameStart+2]
}


num_lines = 1
var str_1 = lines[frameStart]
var len_1 = string_length(str_1)


if(frameStart+1 <= total_lines){
	var str_2 = lines[frameStart+1] 
	var len_2 = string_length(str_2)
	if(position > len_1){
		num_lines = 2	
	}
}

if(frameStart+2 <= total_lines){
	var str_3 =	lines[frameStart+2]
	var len_3 = string_length(str_3)
	if(position > len_1 + len_2){
		num_lines = 3	
	}
}

depth = -1000

draw_set_font(fnt_main_speech)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

text_height = string_height(string_copy(finalStr, 0, position))
text_width = string_width(string_copy(finalStr, 0, position))
sep = 20
expected_lines = ceil(text_width/(width-18))
//num_lines = text_width/(width-10) + 1


/*if(position >= string_length(finalStr)){
num_lines = ceil(num_lines)	
}*/

//num_lines = min(expected_lines, num_lines)



/*draw_set_color(c_white)
draw_rectangle(31, view_hport[0] - 256, view_wport[0] -31, view_hport[0] -31, false)
*/

draw_set_color(c_black)

var yy = 30

draw_sprite_stretched(spr_speech_bubble, 0, tmp_x , tmp_y-height-yy, width+20, 30)
yy-=30

if(num_lines == 2){
	draw_sprite_stretched(spr_speech_bubble, 1, tmp_x , tmp_y-height-yy, width+20, 15)
	yy-=15
}

else if (num_lines == 3){
	draw_sprite_stretched(spr_speech_bubble, 1, tmp_x , tmp_y-height-yy, width+20, 30)
	yy-=30
	
}
draw_sprite_stretched(spr_speech_bubble, 2, tmp_x , tmp_y-height-yy, width+20, 30)

//Old bubble
/*
draw_roundrect(tmp_x, tmp_y - height - 45, tmp_x + width, (tmp_y - height - 45) + (num_lines*text_height) + sep/2 , false)
draw_triangle(tmp_x, (tmp_y - height - 55) + (num_lines*text_height) + sep/2, tmp_x + 10, (tmp_y - height - 55) + (num_lines*text_height) + sep/2, tmp_x + 1, tmp_y-35, false)
*/

draw_set_color(c_white)

//draw_text_ext(20+tmp_x, tmp_y -height -90 + sep/3, string_copy(finalStr, 0, position), sep, width-18 )
draw_text(20+tmp_x, tmp_y - height - 30 + sep/3, string_copy(str_1, 0, min(position, len_1)  ) )


if(frameStart+1 <= total_lines and position > len_1){
	draw_text(20+tmp_x, tmp_y - height - 30+sep + sep/3, string_copy(str_2, 0, min(position-len_1, len_2)  ) )
}

if(frameStart+2 <= total_lines and position > len_3){
	draw_text(20+tmp_x, tmp_y - height - 30+sep*2 + sep/3, string_copy(str_3, 0, min(position-len_1-len_2, len_3)  ) )
}

