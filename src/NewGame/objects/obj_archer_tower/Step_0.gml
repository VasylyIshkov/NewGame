

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
}else{
	var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x+15,y+15,x+50,y+50,pc, c_black, c_red, c_lime, 0, true, true);
}
