function screenshake(_shake){
	var screen = instance_create_layer(x, y, layer, obj_shake);
	screen.shake = _shake
	
}

function se_destruir()
{
	var elementos = layer_get_all_elements("sq_boss");
	layer_sequence_destroy(elementos[0]);
	
	instance_create_layer(928, 288, "boss", obj_boss);
}

function se_destruir2()
{
	var elem = layer_get_all_elements("transicao");
	layer_sequence_destroy(elem[0]);
	
	
}

function level_end()
{
	if instance_exists(obj_player){
		layer_sequence_create("sq_boss", obj_player.x, obj_player.y, sq_player_end);
		instance_destroy(obj_player, false);
		
		if (instance_exists(obj_controller)){
			obj_controller.level_completo = true;
		}
	}
}

function transicao()
{
	layer_sequence_create("transicao", 960, 608, sq_transition);
}

function voltar()
{
	room_goto(rm_inicio);
}

function boss_sound()
{
	audio_stop_sound(sfx_Aggressor);
	audio_play_sound(sfx_Darkling, 1, true);
}
