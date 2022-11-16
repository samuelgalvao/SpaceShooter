
if (instance_exists(obj_player))
{
x = obj_player.x;
y = obj_player.y;
}
if (life_shield <= 0)
{
	instance_destroy();
	audio_play_sound(sfx_shieldDown, 2, false);
	obj_player.shields --;
}

