//Spawn x amount of enemies
enemy_id = 0

for (i = 0; i < argument0; i++){
	enemy_id = instance_create_layer(x + random_range(-25,25),y+random_range(-25,25),"Instances",obj_brute)
	enemy_id.aggro_range = 10000
}

scr_switch_camera_focus(enemy_id,250)