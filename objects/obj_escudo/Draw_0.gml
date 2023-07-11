/// @description Deixando o escudo mais bonito
draw_self();

//Setando o efeito de Blendmode
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index,x ,y,image_xscale, image_yscale,image_angle,c_aqua,0.2);
gpu_set_blendmode(bm_normal);


