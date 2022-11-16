life = 1;
vspeed = 3;

chance = 20;

E_shoot = function(){
	if (y >= 0)
	{
	instance_create_layer(x, y + sprite_height / 3, "tiros", obj_enemyShoot);
	}
}

if (place_meeting(x, y, obj_enemy)){
	instance_destroy(id, false);
}

alarm[0] = random_range(1, 3) * room_speed;

drop_item = function(_chance){
	var valor = random(100);
	
	if (valor < _chance) && (y > 100){
		instance_create_layer(x, y, "tiros", obj_powerUP);
	}
}
