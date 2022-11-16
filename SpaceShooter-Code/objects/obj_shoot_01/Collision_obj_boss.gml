if !(obj_boss.estado_atual == "estado 4")
{
	instance_destroy();
	other.vida_atual -= .5;
	screenshake(1);

	if instance_exists(obj_controller)
	{
	global.pontos += 3;
	}
}
