/// @description Insert description here
// You can write your code in this editor
if(fade_in){
	draw_set_alpha(starting_alpha)		
} else if(fading &&  !fade_in) {
	draw_set_alpha(max_alpha)	
} else if((!fading && !fade_in) && (triggered)){
	draw_set_alpha(1)	
} else if(!triggered){
	draw_set_alpha(0)	
}	

draw_set_font(fnt_main)
draw_set_halign(fa_center)
draw_set_color(c_white)

draw_text_ext_transformed(view_wport[0]-950, view_hport[0]-880,"The Lorewood", 40, view_wport[0]-64-534,2,2,0)

