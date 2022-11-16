hsp = 4;

vida_max = 1000;
vida_atual = vida_max;

estado_atual = "estado 1"

delay_estado = room_speed * 10;
espera_estado = delay_estado;

espera_tiro = room_speed / 1.5;
delay_tiro = espera_tiro;

estado_01 = function()
{
	x += hsp;
	if (x >= 1600 or x <= 320){
		hsp *= -1;
	}
	
	espera_tiro--;
	if (espera_tiro <= 0)
	{
	instance_create_layer(x, y + 71, "tiros", obj_EnemyShoot02);
	
	}
}

estado_02 = function()
{
	x += hsp;
	if (x >= 1600 or x <= 320){
		hsp *= -1;
	}
	
	espera_tiro--;
	if (espera_tiro <= 0)
	{
	instance_create_layer(x - 160, y, "tiros", obj_enemyShoot);
	
	instance_create_layer(x + 160, y, "tiros", obj_enemyShoot);
	}
}

estado_03 = function()
{
	x += hsp/2;
	if (x >= 1600 or x <= 320){
		hsp *= -1;
	}
	
	espera_tiro -= 0.7;
	
	if (espera_tiro <= 0)
	{
	instance_create_layer(x - 160, y, "tiros", obj_EnemyShoot02);
	
	instance_create_layer(x + 160, y, "tiros", obj_EnemyShoot02);
	}

}
