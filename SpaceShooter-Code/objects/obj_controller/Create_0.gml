randomize();

alarm[0] = room_speed / 2;

global.pontos = 0;

level = 1;

boss = 0;

nivel01 = 80;

level_completo = false

control = 1;

criar_enemigos = function(){
	if (level >= 3)
	{
	instance_create_layer(xx2, yy2, "enemys", obj_enemy02);
	}

	instance_create_layer(xx, yy, "enemys", obj_enemy);
}
