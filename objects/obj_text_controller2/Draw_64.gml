/// @description Insert description here
// You can write your code in this editor

frameStart = frame*3

finalStr = lines[frameStart]

if(frameStart+1 <= total_lines){
	finalStr += lines[frameStart+1] 
}

if(frameStart+2 <= total_lines){
	finalStr +=	lines[frameStart+2]
}


draw_set_font(fnt_main)
draw_set_halign(fa_left)

draw_set_color(c_white)
draw_rectangle(31, view_hport[0] - 256, view_wport[0] -31, view_hport[0] -31, false)

draw_set_color(c_black)

draw_rectangle(32, view_hport[0] - 255, view_wport[0] -32, view_hport[0] -32, false)

draw_set_color(c_white)

draw_text_ext(32+532, view_hport[0]-256, string_copy(finalStr, 0, position), 40, view_wport[0]-64-534 )
draw_sprite_ext(sprites[current_message],0,16,view_hport[0] - 600,20,20,false,c_white,1)



