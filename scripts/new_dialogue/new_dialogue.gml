
//argument 0 should be an array of message to be shown
messages = argument0

//Argument 1 should be an array of the profile sprites to show with 
//The messages in the above array
spr = argument1


//argument 2 is array of objects to center on
objs = argument2

//argument 3 should be an array of actions to do after the dialogue completes. 
// ***Not currently implemented***
actions = argument3


tmp = instance_create_layer(0,0, "Instances", obj_text_controller3)


tmp.message = messages
tmp.sprites = spr
tmp.action = actions
tmp.objects = objs
tmp.init = true