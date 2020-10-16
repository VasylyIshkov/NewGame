

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
if(hp<0) instance_destroy();


if(cooldown = 0){
var i;
cnt = 0;
//instance_find(obj_solger,5)) ищем 5 солдат, 5 это количество водчиняемых воинов на первом уровне 
for (i = 0; i < instance_number(obj_solger); i += 1)
   {
	   if (point_distance(x, y, instance_find(obj_solger,i).x, instance_find(obj_solger,i).y) < 100&& cnt<m_ctn){//тут еще надо разобраться с координатами
       unit[cnt] = instance_find(obj_solger,i);
       cnt++;   
	   }
   }
  /////////////////
   for(i =0;i<cnt; i+=1){
	    with(obj_solger){
	   unit[i].skill_cooldown = true;
	    unit[i].x_attack_build = other.atk_x;
	    unit[i].y_attack_build = other.atk_y;
	  unit[i].skill_cooldown =  other.m_skill_cooldown-1;

   }
   }
   cooldown = m_skill_cooldown;
}
else{
	cooldown-=1;
}
