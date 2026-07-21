draw_self()

if pisca_cor >= 1 cor_base = -1 else if ((inimigo_vida / vida_max) > 0.5) cor_base = c_orange else cor_base = c_red
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, cor_base , image_alpha)