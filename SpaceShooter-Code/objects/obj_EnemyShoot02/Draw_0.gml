draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, c_lime, .1);
gpu_set_blendmode(bm_normal);

