time += delta_time

if (init){
	//draw_set_font(fnt_main)

	while (position < string_length(message[current_message]) ){
	
		if(string_char_at(message[current_message], position) != " " || position == string_length(message[current_message])-1 ){
			word += string_char_at(message[current_message], position)
			if(position == string_length(message[current_message])-1 ){
				word += string_char_at(message[current_message], position+1)
				tmp_line = lines[line] + " " + word
				lines[line] = tmp_line
				word =""
				tmp_line = ""
			}
		}
	
		else {
		
			tmp_line = lines[line] + " " + word
		
			if (string_width(tmp_line) > width-10){
			
					line++
					lines[line] = word
					tmp_line = ""
					word = ""
			
			}
		
			else {
				lines[line] = tmp_line
				tmp_line = ""
				word = ""
			
			}
		}
	
		position++
	
	}

	total_lines = line
	position = 0
	
	init = false
}

else if(keyboard_check(ord("Z")) and !is_pressed and position >= string_length(finalStr)){
	frame++
	
	if(frame  > floor(total_lines/3)){
		
		if(current_message < array_length_1d(message)-1){
			current_message++
			
			position = 1
			line = 0

			lines = undefined
			lines[0] = ""

			total_lines =0

			word = ""

			tmp_line = ""

			frame = 0

			timer = 10000
			time = 0

			finalStr = ""

			//draw_set_font(fnt_main)

			while (position < string_length(message[current_message]) ){
	
				if(string_char_at(message[current_message], position) != " " || position == string_length(message[current_message])-1){
					word += string_char_at(message[current_message], position)
					if(position == string_length(message[current_message])-1 ){
						word += string_char_at(message[current_message], position+1)
						tmp_line = lines[line] + " " + word
			
						lines[line] = tmp_line
						word =""
						tmp_line = ""
					}
		
				}
	
				else {
		
					tmp_line = lines[line] + " " + word
		
					if (string_width(tmp_line) > width-10){
			
							line++
							lines[line] = word
							tmp_line = ""
							word = ""
			
					}
		
					else {
						lines[line] = tmp_line
						tmp_line = ""
						word = ""
			
					}
				}
	
				position++
	
			}

			total_lines = line
			position = 0

		}
		
		else{
			instance_destroy(self)	
		}
	}
	
	position = 0
	
	
}

else if(keyboard_check(ord("Z")) ){
	position+=4
	time = 0
	is_pressed = true		
}

else {
	is_pressed = false	
	
	if (time > timer and position <= string_length(finalStr)){
	
		position++	
		time = 0
	}
	
}



