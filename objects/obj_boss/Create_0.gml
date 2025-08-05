/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/*
Estados

Estado 1 = Parado dando tiro 2
Estado 2 = Movendo dando tiro 1
Estado 3 = Parado intercalando entre tiro 1 e 2

(Estado 4)
Estado especial 1  = Invulnerável enquando cria 2 minions para se regenerar

*/
//Setando o estado de ataque do Boss
estado_atual = "estado 2"

//Setando o tempo de disparo
espera_tiro = 0
delay_tiro = game_get_speed(gamespeed_fps) / 2;

//Setando tempo de estados
delay_estado = game_get_speed(gamespeed_fps) * 5;
espera_estado = delay_estado;

//Metodos dos estados de ataque
//Estado 1
estado_01 = function()
{
	espera_tiro--
	if espera_tiro <= 0 
	{
		instance_create_layer(x, y + 50, "tiros", obj_inimigo_tiro02)
		espera_tiro = delay_tiro;
	}																  
}																	  

//Estado 2																	  
estado_02 = function(){
	espera_tiro--
	if espera_tiro <= 0 {
	instance_create_layer(x - 160, y + 20, "tiros", obj_inimigo_tiro01)
	instance_create_layer(x + 160, y + 20, "tiros", obj_inimigo_tiro01)
	espera_tiro = delay_tiro;
	}
}