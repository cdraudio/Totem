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

depth = -1000

draw_set_font(fnt_main_speech)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

/*draw_set_color(c_white)
draw_rectangle(31, view_hport[0] - 256, view_wport[0] -31, view_hport[0] -31, false)
*/

draw_set_color(c_black)

draw_rectangle(tmp_x, tmp_y - height - 45, tmp_x + width, tmp_y- 45, false)
draw_triangle(tmp_x-1, tmp_y - 45, tmp_x + 10, tmp_y - 45, tmp_x + 1, tmp_y-35, false)

draw_set_color(c_white)

draw_text_ext(5+tmp_x, tmp_y -height -45 + 2, string_copy(finalStr, 0, position), 12, width-10 )



