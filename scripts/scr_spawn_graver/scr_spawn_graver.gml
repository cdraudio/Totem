//Spawn x amount of enemies
graver_id = 0

for (i = 0; i < argument0; i++){
	graver_id = instance_create_layer(x + random_range(-10,10),y+random_range(-10,10),"Instances",obj_graver)
	graver_id.aggro_range = 10000
}

scr_switch_camera_focus(graver_id,1000)