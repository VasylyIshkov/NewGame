

if(instance_exists(obj_unit)){
if(cooldown<1)	{
	//instance_create_layer создет обьект указанного типа в указанной позиции на указанном слое
	if(distance_to_object(obj_unit)<300){
	instance_create_layer(x,y,"BulletLayer",obj_archer_bullet)
	cooldown = 30;
	}
}
cooldown = cooldown-1;
}
if(hp<0){
	instance_destroy();
}

	