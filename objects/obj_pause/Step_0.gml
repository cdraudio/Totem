/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_space)){
	screen_shot = sprite_create_from_surface(application_surface,view_xport[0] ,view_yport[0],view_wport[0],view_hport[0],0,0,0,0); 
    paused = !paused;
}

if(paused){
   instance_deactivate_all(1);
   instance_activate_object(obj_view)
}else{
    if(sprite_exists(screen_shot)){
        sprite_delete(screen_shot);
    }
    instance_activate_all();
}