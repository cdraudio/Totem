/// @description Insert description here
// You can write your code in this editor
//x += floor((obj_player.x - x)*0.3) ;
	//y += floor((obj_player.y - y)*0.3) ;

target_x = mouse_x
target_y = mouse_y
	
if(abs(target_x-x)< 1 and target_x != x){
	x =  target_x	
}
	
else{
	x += (target_x - x)/10	
}
	
if(abs(target_y-y)< 1 and target_y != y){
	y =  target_y	
}
	
else{
	y += (target_y - y)/10
}