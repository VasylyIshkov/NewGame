if(instance_exists(obj_archer_tower)){
	move_towards_point(instance_nearest (x, y, obj_archer_tower).x,instance_nearest (x, y, obj_archer_tower).y,2);
}
if(hp<0) instance_destroy();