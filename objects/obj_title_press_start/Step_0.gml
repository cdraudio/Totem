/// @description Insert description here
// You can write your code in this editor
if(triggered){
	if(fading){
		max_alpha -= 0.01
		draw_set_alpha(max_alpha)
	}

	if(max_alpha <= 0){
		fading = false
		fade_in = true
	}

	if(fade_in){
		max_alpha += 0.01	
		draw_set_alpha(max_alpha)
	}

	if(max_alpha >= 1){
		fade_in = false
		fading = true
	}
}