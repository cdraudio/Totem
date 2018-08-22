//write your messages in an array, starting at 0, like so
message[0] = "Wow, it's really quiet in here";
message[1] = "Probably because JOE HASNT MADE ANY SOUNDS";


message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 2; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.8; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message