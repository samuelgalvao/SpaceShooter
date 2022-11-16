
if (vida_atual <= 0){
	instance_destroy();
}

#region // ESTADOS DO BOSS
espera_estado--;
if (estado_atual == "estado 1")
{
	sprite_index = spr_boss_combat;
	estado_01();
}

else if (estado_atual == "estado 2")
{
	sprite_index = spr_boss_combat;
	estado_02();
}

else if (estado_atual == "estado 3")
{
	sprite_index = spr_boss_combat;
	estado_03();
}

if (espera_estado <= 0){
	estado_atual = choose("estado 1", "estado 2", "estado 3");
	
	espera_estado = delay_estado;
}
if (espera_tiro <= 0){
	espera_tiro = delay_tiro;
}
#endregion
