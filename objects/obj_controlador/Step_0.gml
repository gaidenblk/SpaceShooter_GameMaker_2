/// @description Configurações do jogo
//Resetando o jogo - SOMENTE PARA DEBUG - "R"
if keyboard_check_pressed(ord("R"))
{
	game_restart();	
}
//Variável de posicionamento horizontal
x_pos1 = random_range(50,1900);
x_pos2 = random_range(50,1900);
//Testando configurações de disparo
if keyboard_check_pressed(ord("1"))
{
	global.disparo = 0
}
if keyboard_check_pressed(ord("2"))
{
	global.disparo = 1
}
if keyboard_check_pressed(ord("3"))
{
	global.disparo = 2
}