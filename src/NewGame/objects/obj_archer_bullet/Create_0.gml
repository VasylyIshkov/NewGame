if(instance_exists(Unit_base)){
//instance_nearest	Возвращает идентификатор экземпляра объекта, ближайшего к заданной позиции.
direction = point_direction(x,y,instance_nearest(x,y,Unit_base).x,instance_nearest(x,y,Unit_base).y);
speed = 5;
image_angle = direction-90;
}
