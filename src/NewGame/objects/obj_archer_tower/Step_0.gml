

if(instance_exists(obj_unit)){
if(cooldown<1)	{
	//instance_create_layer создет обьект указанного типа в указанной позиции на указанном слое
	if(distance_to_object(obj_unit)<300){
		
	bullet_id = instance_create_layer(x,y,"BulletLayer",obj_archer_bullet);
	cooldown = 30;
	with bullet_id{
		direction = point_direction(x,y,instance_nearest(x,y,obj_unit).x,instance_nearest(x,y,obj_unit).y);
		
		speed = 5;
		
		image_angle = direction-90;
	}
	}
}
cooldown = cooldown-1;
}
if(hp<0){
	instance_destroy();
}

	