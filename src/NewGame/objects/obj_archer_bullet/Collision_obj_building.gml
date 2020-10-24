if(target = false){//true -  цель воины, false = строения
with(other){
hp = hp-other.attack;	
}
//Уничтожает обьект
instance_destroy();
}