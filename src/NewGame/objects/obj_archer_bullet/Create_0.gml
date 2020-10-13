if(instance_exists(Unit_base)){
	direction = point_direction(x,y,Unit_base.x,Unit_base.y);
direction = direction+ random_range(-4,4);
speed = 16;
image_angle = direction;
}
