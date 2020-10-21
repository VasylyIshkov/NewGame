if(instance_exists(obj_unit)){
//instance_nearest	Возвращает идентификатор экземпляра объекта, ближайшего к заданной позиции.
direction = point_direction(x,y,instance_nearest(x,y,obj_unit).x,instance_nearest(x,y,obj_unit).y);
speed = 5;
image_angle = direction-90;
}
