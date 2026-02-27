/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _img_angle
if (x < room_width / 2) _img_angle = 90 else _img_angle = 270
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * escala, image_yscale * escala, _img_angle, c_aqua, image_alpha)