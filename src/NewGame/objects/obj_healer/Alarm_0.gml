for (i = 0; i < instance_number(obj_unit); i += 1)
   {
	   if (point_distance(x, y, instance_find(obj_unit,i).x, instance_find(obj_unit,i).y) < 100){//тут еще надо разобраться с координатами
       with(instance_find(obj_unit,i)){
		   hp+=10;
	   }
	   }
   }
  /////////////////
 
   alarm[0] = max_skill_cooldown;