/// @description Insert description here
// You can write your code in this editor
if(bank>0){
	if(instance_exists(obj_nefrit_stock)){
show_message("Собрали ресурсы "+string(bank));
	//instance_number Возвращает количество активных экземпляров данного объекта.
	cnt  = instance_number(obj_nefrit_stock);
	//show_message("Собрали ресурсы "+string(cnt));
	if(obj_nefrit_stock.bank<(obj_nefrit_stock.m_bank+bank)){
		sum = bank/cnt;
			obj_nefrit_stock.bank += sum;
            bank = 0;
       }
	}
}