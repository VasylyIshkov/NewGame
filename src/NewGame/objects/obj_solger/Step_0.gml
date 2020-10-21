if(bool_general_effect==true){
	if(x_attack_build>0){
		move_towards_point(x_attack_build,y_attack_build,0.5);
		if(instance_place (x_attack_build,y_attack_build,obj_building==noone)){
			x_attack_build = -1;
			y_attack_build = -1;
		}
	}
	else{
		if(instance_number(obj_archer_tower)>0){
move_towards_point(instance_nearest (x, y, obj_archer_tower).x,instance_nearest (x, y, obj_archer_tower).y,0.5);
		}
		else{
		move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,0.5);
		}
	}
	skill_cooldown--;
	if(skill_cooldown<0){ bool_general_effect = false;}
}
else{
if(instance_exists(obj_building)){
	
	move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,0.5);
}
else{instance_destroy();}
}
if(hp<0) instance_destroy();