/// @description Criando efeito de cores
draw_self();
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.3,image_yscale*1.3,image_angle,cores,0.4);
gpu_set_blendmode(bm_normal);