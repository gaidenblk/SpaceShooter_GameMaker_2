/// @description Criando a imagem de disparo
draw_self();
//Criando a imagem de efeito de disparo
gpu_set_blendmode(bm_add);
draw_sprite_ext(brilho,image_index,x,y,image_xscale*0.7,image_yscale*0.7,image_angle,image_blend,0.3);
gpu_set_blendmode(bm_normal);