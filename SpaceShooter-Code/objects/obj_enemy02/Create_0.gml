vspeed = 4;

life = 2;

chance = 40;

E_shoot = function(){
	if (y >= 0) && (y <= 1080)
	{
	instance_create_layer(x, y + sprite_height / 3, "tiros", obj_EnemyShoot02);
	}
}

direct = 1;

alarm[0] = random_range(1, 3) * room_speed;

drop_item = function(_chance){
	var valor = random(100);
	
	if (valor < _chance) && (y > 100){
		instance_create_layer(x, y, "tiros", obj_powerUP);
	}
}
