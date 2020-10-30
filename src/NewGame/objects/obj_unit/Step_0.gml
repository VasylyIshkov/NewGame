if(keyboard_check(vk_shift) && cooldown<1){
	if(ninja_count>0){
		instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_archer);
	ninja_count -=1;
	cooldown = 20;
	}
	else if(gen_count>0){
		instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_general);
	gen_count -=1;
	cooldown = 20;
	}
	else if(healer_count>0){
		instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_healer);
	healer_count -=1;
	cooldown = 20;
	}
	//else if(unit_count>0){
	///instance_create_layer(mouse_x,mouse_y,"EnemyLayer",obj_solger);
	//unit_count -=1;
	///cooldown = 20;
	//}
}
cooldown -=1;