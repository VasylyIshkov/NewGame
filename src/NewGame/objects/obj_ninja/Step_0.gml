if(instance_exists(obj_resource)){
	move_towards_point(instance_nearest (x, y, obj_resource).x,instance_nearest (x, y, obj_resource).y,2);
} else if(instance_exists(obj_building)){
	move_towards_point(instance_nearest (x, y, obj_building).x,instance_nearest (x, y, obj_building).y,2);
}else{
	instance_destroy();
	}


if(hp<0) instance_destroy();
