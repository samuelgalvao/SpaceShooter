draw_self();

var cor = choose(c_blue, c_lime, c_red, c_orange, c_purple, c_yellow, c_silver, c_navy, c_olive)

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, cor, 0.2);
gpu_set_blendmode(bm_normal);
