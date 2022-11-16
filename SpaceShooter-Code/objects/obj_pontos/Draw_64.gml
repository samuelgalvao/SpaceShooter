
var _pontos = round(global.max_pontos);
draw_set_font(ft_pontos);

draw_text(500, 192, "MAX SCORE:  " + string(_pontos));
draw_text(500, 150, "MORTES:     " + string(global.total_mortes));
draw_text(500, 108, "ENEMIGOS MORTOS:  " + string(global.enimigos_mortos));


draw_set_font(-1);


