var pc;
pc = (hp / max_hp) * 100;
draw_healthbar(x+15,y-25,x-15,y-15,pc, c_black, c_red, c_lime,1, 0, 1);


draw_circle_for_unit(x,y,100,c_black);
 //  draw_circle(x,y,100,true);
 //  alarm[0] = max_skill_cooldown;