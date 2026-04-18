/// @description Configurações do jogo
//Criando tela de game over quando o player morre
//Primeiro checo se o player existe, caso não, chamo a tela de game over
if !instance_exists(obj_player) && !gameover_seq && !jogo_finalizado
{
	//Criando a sequencia de game over
	gameover_seq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);
	global.total_mortes++
	
	//Tocando audio ao instanciar objeto
	audio_play_sound(sfx_lose, 1, false,10)
}

//permitindo o jogador reiniciar o jogo quando estiver na tela de gameover
if gameover_seq != noone
{
	if keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)
	{
		var _transicao = instance_create_layer(0, 0, "Player", obj_transicao)
		_transicao.destino = rm_inicio
	}	
}