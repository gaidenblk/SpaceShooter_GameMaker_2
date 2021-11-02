/// @description Criando efeito de disparo
draw_self();
//Colocando o efeito
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_tiro_brilho_inimigo,image_index,x,y,image_xscale*0.6,image_yscale*0.6,image_angle,cores,0.3);
gpu_set_blendmode(bm_normal);