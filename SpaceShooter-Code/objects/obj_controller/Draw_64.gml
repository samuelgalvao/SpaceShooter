
//pontText = string(global.pontos);
//draw_text(50, 20, "PONTOS: " + pontText);

var levelText = string(level);
draw_text(1100, 50, "NIVEL: " + levelText);

/* DEBUG
var maxpont = string(global.max_pontos);
draw_text(1100, 70, "max pontos: " + maxpont);

var mortes = string(global.total_mortes);
draw_text(1100, 90, "Mortes: " + mortes);
 DEBUG */ 

//lifePlayer_text = string(obj_player.life_player);
//draw_text(20, 80, "VIDA: " + lifePlayer_text);

var x_plane = 50;
var x_shield = 50;

#region  // VIDAS DO PLAYER e ESCUDOS
if instance_exists(obj_player){
	repeat(obj_player.life_player)
	{
		draw_sprite_ext(spr_player, 0, x_plane, 110, 0.3, 0.3, image_angle, c_white, 0.5);
		x_plane += 40;
	}
	repeat (obj_player.shields)
	{
		draw_sprite_ext(spr_shield, 2, x_shield, 50, 0.3, 0.3, image_angle, c_white, 0.5)
		x_shield += 40
	}
}
#endregion	

