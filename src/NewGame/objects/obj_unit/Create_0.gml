unit_count = 6;
gen_count = 1;
healer_count = 1;
ninja_count = 5;
cooldown=0;
max_hp = -1;
hp = -1;

// временно русть будет здесь
global.nefrit_count = 0;

instance_create_layer(window_get_width()/2,window_get_height()/2,"NotificationLayer",obj_unit_train);
