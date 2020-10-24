

if(instance_exists(obj_archer_tower)){
	atk_x = instance_nearest (x, y, obj_archer_tower).x;
	atk_y = instance_nearest (x, y, obj_archer_tower).y;
	move_towards_point(atk_x,atk_y,0.5);
}
else if(instance_exists(obj_building)){
	atk_x = instance_nearest (x, y, obj_building).x;
	atk_y = instance_nearest (x, y, obj_building).y;
	move_towards_point(atk_x,atk_y,0.5);
}
else{instance_destroy();}
if(hp<0){
	instance_destroy();
} else{
	var pc;
pc = (hp / max_hp) * 100;
draw_healthbar (x-15,y-15,x+15,y+15,pc, c_black, c_red, c_lime, 0, true, true);
}


if(cooldown = 0){
var i;
controlled_units = 0;
//instance_find(obj_solger,5)) ищем 5 солдат, 5 это количество водчиняемых воинов на первом уровне 
for (i = 0; i < instance_number(obj_subordinate_units); i += 1)
   {
	   if (point_distance(x, y, instance_find(obj_subordinate_units,i).x, instance_find(obj_subordinate_units,i).y) < 100&& controlled_units<max_controlled_units){//тут еще надо разобраться с координатами
       unit[controlled_units] = instance_find(obj_subordinate_units,i);
       controlled_units++;   
	   }
   }
  /////////////////
   for(i =0;i<controlled_units; i+=1){
	    with(unit[i]){
	    bool_general_effect= true;
	    x_attack_build = other.atk_x;
	    y_attack_build = other.atk_y;
	  skill_cooldown =  other.m_skill_cooldown-1;

   }
   }
   cooldown = m_skill_cooldown;
}
else{
	cooldown-=1;
}
