#region //XX e YY
xx = random_range(100, 1790);
yy = random_range(-1300, -10);

xx2 = random_range(100, 1790);
yy2 = random_range(-1300, -10);
#endregion

#region //CONTROLE DE NIVEL
if (global.pontos > nivel01){
	level += 1;
	nivel01 *= 2;
}
#endregion

#region //GAME OVER
if (!instance_exists(obj_player) && control == 1 && !level_completo) {
	transicao();
	
	layer_sequence_create("game_over", 960, 608, sq_game_over);
	
	audio_play_sound(sfx_lose, 4, false);
	global.total_mortes += 1;
	
	control--;
	
}
if (keyboard_check(vk_shift))
{
	room_goto(rm_inicio);
}


if (!instance_exists(obj_player)){
	if (keyboard_check(vk_enter)){
			//transicao();
			room_restart();
	}
}

// VOLTANDO PARA A ROM INICIO

#endregion

#region //BOSS

if (instance_exists(obj_player))
{
	if (level == 7)
	{
		if (boss == 0){
			layer_sequence_create("sq_boss", 928, 453, sq_boss);
			boss = 1
		}
	}
}

#endregion

#region // PONTOS

if (global.pontos > global.max_pontos)
{
	global.max_pontos = global.pontos;
}

#endregion
