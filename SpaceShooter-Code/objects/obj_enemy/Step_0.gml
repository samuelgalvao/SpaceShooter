if (life <= 0){
	instance_destroy();
	global.pontos += 10;
}
if (y >= 1300){
	instance_destroy(id, false);
}
