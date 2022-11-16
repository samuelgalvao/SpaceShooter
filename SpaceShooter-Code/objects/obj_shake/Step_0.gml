view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

shake *= .95

if (shake < .5){
	instance_destroy();
}
