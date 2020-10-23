// блок движения
if(instance_exists(obj_unit)&&direction_cooldown=max_direction_cooldown){
	
all_unit_count = instance_number(obj_unit);
unit_low_hp_count = 0;
//находим всех с раненных
 for(i=0;i<all_unit_count;i+=1){
	 t_unit = instance_find(obj_unit,i);
	  with t_unit{
		if (hp<max_hp) {
			other.unit_low_hp[other.unit_low_hp_count] = other.t_unit;
			other.unit_low_hp_count+=1;
		}
	  }
 }
 //show_message("What?");
 if(unit_low_hp_count>0){
 nearest_unit_low_hp = distance_to_object(unit_low_hp[0]);
 id_nearest_unit = 0;
 //находим ближайшего раненного
 for(i =0;i<unit_low_hp_count;i+=1){
	 if(distance_to_object(unit_low_hp[i])<nearest_unit_low_hp){
		 nearest_unit_low_hp = distance_to_object(unit_low_hp[i]);
		 id_nearest_unit = i;
	 }
 }
 nearest_unit_low_hp_x =0;
 nearest_unit_low_hp_y =0;
 with unit_low_hp[id_nearest_unit]{
 other.nearest_unit_low_hp_x= x;
 other.nearest_unit_low_hp_y = y;
 }
  move_towards_point(nearest_unit_low_hp_x,nearest_unit_low_hp_y,0.5);
 
 }
 direction_cooldown=0;
 
 
}
direction_cooldown+=1;
//конец блока движения

if(!instance_exists(obj_building)){
	instance_destroy();
	}

if(hp<0) instance_destroy();