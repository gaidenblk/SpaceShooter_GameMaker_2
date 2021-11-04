/// @description Configurações do jogo
//Resetando o jogo - SOMENTE PARA DEBUG - "R"
if keyboard_check_pressed(ord("R"))
{
	game_restart();	
}
//Variável de posicionamento horizontal
x_pos1 = random_range(20,room_width-20);
x_pos2 = random_range(20,room_width-20);