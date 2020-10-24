/// необходимо переписать, взято у солдата
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
		else if (instance_exists(obj_building)){
		move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,0.5);
		}
		else{
			instance_destroy();
			}
	}
	skill_cooldown--;
	if(skill_cooldown<0){ bool_general_effect = false;}
}
else{
if(instance_exists(obj_building)){
	
	if(distance_to_object(obj_building)>100){
	move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,0.5);
	}else{
		if(cooldown<=0){
			move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,0);
		bullet_id = instance_create_layer(x,y,"BulletLayer",obj_archer_bullet);
	cooldown = 30;
	with bullet_id{
		direction = point_direction(x,y,instance_nearest(x,y,obj_building).x,instance_nearest(x,y,obj_building).y);
		
		speed = 5;
		
		image_angle = direction-90;
		target = false;
		attack = other.attack;
	}
	}
	}
}
else{instance_destroy();}
}
if(hp<0) instance_destroy();
 if(cooldown>0) cooldown-=1;
