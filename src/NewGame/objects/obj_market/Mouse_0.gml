/// @description Insert description here
// You can write your code in this editor
if(bank>0){
show_message("Собрали ресурсы "+string(bank));
if(instance_exists(obj_nefrit_stock)){
	if(obj_nefrit_stock.bank<obj_nefrit_stock.m_bank+bank)
obj_nefrit_stock.bank += bank;
bank = 0;
}

}