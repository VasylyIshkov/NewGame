if(mouse_check_button_pressed(mb_left)){
switch(instance_position(mouse_x, mouse_y,obj_train_instance)){
	case unit_train_instance[0]:{
		set_unit_train("healer");
		//set_unit_number(unit_train_instance[0],global.healer_count);
		with(unit_train_instance[0]){
			count = global.healer_count;
		}
	}break;
	case unit_train_instance[1]:{
		set_unit_train("general");
	}break;
	case unit_train_instance[2]:{
		set_unit_train("ninja");
	}break;
	case unit_train_instance[3]:{
		set_unit_train("archer");
	}break;
	case unit_train_instance[4]:{
		set_unit_train("soldier");
	}break;
	case unit_train_instance[5]:{
		show_message(string(global.unit_count));
	}break;
	case unit_train_instance[6]:{
		show_message("6");
	}break;
	case unit_train_instance[7]:{
		show_message("7");
	}break;
	case unit_train_instance[8]:{
		show_message("8");
	}break;
	default:{
		
	}
}	
}