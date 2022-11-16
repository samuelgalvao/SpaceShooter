#region  // MOVIMENTO
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

hsp = (-left + right)*spd;
vsp = (-up + down)*spd;

x += hsp;
y += vsp;
#endregion

#region // NIVEL DO TIRO
if keyboard_check_pressed(ord("W")){
	if (shoot_levl < 4){
	shoot_levl += 1;
	}
}
if keyboard_check_pressed(ord("S")){
	
	if (shoot_levl > 0){
	shoot_levl -= 1;
	}
}
#endregion

#region // ESCUDO

if (!instance_exists(obj_shield) && shields > 0)
{

	if (keyboard_check(ord("Z")) && instance_exists(obj_player)) {
		instance_create_layer(x, y, "shield", obj_shield)
	}
}
#endregion

#region // CRIAÇÃO DO TIRO
if (alarm[0] == -1){
	alarm[0] = room_speed / 3;
	
	// shoot 01
	if (shoot_levl == 1){
		tiro_01();
		audio_play_sound(sfx_laser1, 2, false);
	}
	
	// shoot 02
	if (shoot_levl == 2){
		alarm[0] = room_speed / 2
		tiro_02();
		audio_play_sound(sfx_laser2, 2, false);
	}
	
	// shoot 03
	if (shoot_levl == 3){
		tiro_01();
		tiro_02();
		audio_play_sound(sfx_twoTone, 2, false);
	}
	
	// shoot 04
	if (shoot_levl == 4){
		tiro_03();
		audio_play_sound(sfx_laser1, 2, false);
		audio_play_sound(sfx_zap, 2, false);
	}
	
}
#endregion

#region // LIMITANDO O MOVIMENTO DO PLAYER

x = clamp(x, 65, 1850);
y = clamp(y, 80, 1013);

#endregion

if (life_player <= 0){
	instance_destroy();
	//game_restart();
}

