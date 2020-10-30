// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_circle_for_unit(x,y,r,color){
draw_set_color(color);
draw_circle(x,y,r,true);
}

function set_unit_train(param){
	//show_message("set unit train");
	if(global.unit_count<global.max_unit_count){
	switch(param){
	case "soldier":{
		global.unit_count+=1;
		global.soldier_count+=1;
	}break;
	case "healer":{
		global.unit_count+=1;
		global.healer_count+=1;
	}break;
	case "general":{
		global.unit_count+=1;
		global.general_count+=1;
	}break;
	case "ninja":{
		global.unit_count+=1;
		global.ninja_count+=1;
	}break;
	case "archer":{
		global.unit_count+=1;
		global.archer_count+=1;
	}break;
	}
	}else{
		show_message("Max unit count");
	}
}
	
	function set_unit_number(Instance_id,count){
		tmp_count = count;
		with(Instance_id){
		count = other.tmp_count;
		}
	}