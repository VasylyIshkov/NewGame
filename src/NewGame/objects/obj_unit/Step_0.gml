if(mouse_check_button(mb_left) && cooldown<1){
	if(unit_count>0){
	instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_solger);
	unit_count -=1;
	cooldown = 20;
	}
	else if(gen_count>0){
		instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_general);
	gen_count -=1;
	cooldown = 20;
	}
}
cooldown -=1;