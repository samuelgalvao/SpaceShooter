if (life <= 0){
	instance_destroy();
	global.pontos += 20;
}

if (y > room_height / 3) && (direct == 1) //DIREÇÂO
{
	if (x < room_width / 2){
		hspeed = 3;
		direct -= 1;
	}
	else{
		hspeed = -3;
		direct -= 1;
	}
}

if (y >= 1300){
	instance_destroy(id, false);
}
