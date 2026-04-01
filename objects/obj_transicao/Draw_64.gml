/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Setando as propriedades visuais do retangulo
draw_set_alpha(transparencia)
draw_set_colour(c_black)

//Desenhando um retangulo preto na tela
var x2, y2
x2 = display_get_gui_width()
y2 = display_get_gui_height()

draw_rectangle(0, 0, x2, y2, false)

//Resetando as propriedades
draw_set_alpha(1)
draw_set_colour(-1)