//Array to hold messages for dialogue sequence
//Each array index is a new dialogue section (e.g. New character)
//message[0] = "Hey this is a nice room. I could stay here all day talking to myself, I need some more text to test this text controller so I am just going to keep typing until I think I have enough text.Hey this is a nice room. I could stay here all day talking to myself, I need some more text to test this text controller so I am just going to keep typing until I think I have enough text.Hey this is a nice room. I could stay here all day talking to myself, I need some more text to test this text controller so I am just going to keep typing until I think I have enough text."
//message[1] = "This is the second message"

//Sprite profiles for who is speaking
//sprites[0] = spr_player_profile
//sprites[1] = spr_runeclaw_idle

//Actions/effects if we need them later
//action[0] = undefined
init = false

message = []
sprites = []
action = []
objects = []

is_pressed = false

current_message = 0 

position = 1
line = 0

lines[0] = ""

total_lines =0

word = ""

tmp_line = ""

frame = 0

timer = 10000
time = 0

finalStr = ""




