hsp = 0;
vsp = 0;
spd = 8;
life_player = 3;

transicao();  

shoot_levl = 1;

shields = 3;

#region //TIROS
tiro_01 = function(){
	instance_create_layer(x, y- sprite_height/3, "tiros", obj_shoot_01);
}


tiro_02 = function(){
		var tiro01 = instance_create_layer(x - 60, y- sprite_height/3, "tiros", obj_shoot_02); // Left
		tiro01.hspeed = 3;
		
		var tiro02 = instance_create_layer(x + 60, y- sprite_height/3, "tiros", obj_shoot_02); // Right
		tiro02.hspeed = -3
}


tiro_03 = function()
{
	alarm[0] = room_speed / 2;
	var shoot01 = instance_create_layer(x, y - sprite_height / 3, "tiros", obj_shoot_01);
	var shoot02 = instance_create_layer(x, y - sprite_height / 3, "tiros", obj_shoot_01);
	var shoot03 = instance_create_layer(x, y - sprite_height / 3, "tiros", obj_shoot_01);
	
	shoot01.direction = 135; // left
	shoot02.direction = 90;  // middle
	shoot03.direction = 45;	// riight
	
}
#endregion

#region //POWER UP

powerup = function(_chance)
{
	if (_chance >= 80){
		if (shoot_levl < 4){
			shoot_levl++;
		}
	}
	else if (_chance >= 50){
		life_player++;
	}
	else if (_chance >= 30){
		shields++;
	}
	else {
		if (spd < 10){
		spd += .5;
		}
	}
}

#endregion




