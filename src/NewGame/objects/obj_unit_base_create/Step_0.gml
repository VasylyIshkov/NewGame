if(mouse_check_button(mb_left) && count>0 && cooldown<1){
	if(instance_position(mouse_x,mouse_y,obj_archer_tower)==noone){
	instance_create_layer(mouse_x,mouse_y,"EnemyLayer",Unit_base);
	count -=1;
	cooldown = 20;
	}
}
cooldown -=1;