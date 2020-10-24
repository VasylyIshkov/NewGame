if(hp<0){
	tmp = global.nefrit_count/instance_number(obj_nefrit_stock);
	global.nefrit_count = global.nefrit_count-tmp;
	instance_destroy();
}
