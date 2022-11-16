if !(obj_boss.estado_atual == "estado 4")
{
	
	instance_destroy();
	other.vida_atual -= 1;
	screenshake(2);
	if instance_exists(obj_controller)
	{
	global.pontos += 3;
	}
}
