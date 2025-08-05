/// @description Configurações do jogo
//Resetando o jogo - SOMENTE PARA DEBUG - "R"
if keyboard_check_pressed(ord("R"))
{
	game_restart();	
}

//Criando tela de game over quando o player morre
//Primeiro checo se o player existe, caso não, chamo a tela de game over
if !instance_exists(obj_player) && !gameover_seq
{
	//Criando a sequencia de game over
	gameover_seq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);	
}

//permitindo o jogador reiniciar o jogo quando estiver na tela de gameover
if gameover_seq != noone
{
	if keyboard_check_pressed(vk_enter)
	{
		game_restart();	
	}	
}