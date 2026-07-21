/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _img_angle
if (x < room_width / 2) _img_angle = 90 else _img_angle = 270
if pisca_cor >= 1 cor_base = c_aqua else if ((inimigo_vida / vida_max) > 0.5) cor_base = c_orange else cor_base = c_red
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * escala, image_yscale * escala, _img_angle, cor_base , image_alpha)