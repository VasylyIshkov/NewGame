//здесь при созданиии надо ставить значения из глобальных и добавить переменную ответсвенную за отрисовку
unit_train_instance[0]=instance_create_layer(x+50,y+50,"NotificationLayer",obj_train_instance);
with(unit_train_instance[0]){
	unit = "healer";
	count = global.healer_count;
}
unit_train_instance[1]=instance_create_layer(x+150,y+50,"NotificationLayer",obj_train_instance);
with(unit_train_instance[1]){
	unit = "general";
	count = global.general_count;
}
unit_train_instance[2]=instance_create_layer(x+245,y+50,"NotificationLayer",obj_train_instance);
with(unit_train_instance[2]){
	unit = "ninja";
	count = global.ninja_count;
}

unit_train_instance[3]=instance_create_layer(x+50,y+145,"NotificationLayer",obj_train_instance);
with(unit_train_instance[3]){
	unit = "archer";
	count = global.archer_count;
}
unit_train_instance[4]=instance_create_layer(x+150,y+145,"NotificationLayer",obj_train_instance);
with(unit_train_instance[4]){
	unit = "soldier";
	count = global.soldier_count;
}
//unit_train_instance[5]=instance_create_layer(x+245,y+145,"NotificationLayer",obj_train_instance);

//unit_train_instance[6]=instance_create_layer(x+50,y+245,"NotificationLayer",obj_train_instance);
//unit_train_instance[7]=instance_create_layer(x+150,y+245,"NotificationLayer",obj_train_instance);
//unit_train_instance[8]=instance_create_layer(x+245,y+245,"NotificationLayer",obj_train_instance);