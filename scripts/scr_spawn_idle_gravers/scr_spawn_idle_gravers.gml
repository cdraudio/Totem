graver_id = 0

for (i = 0; i < argument0; i++){
	graver_id = instance_create_layer(x + random_range(-25,25),y+random_range(-25,25),"Instances",obj_graver)
	graver_id.state = scr_graver_idle
}
