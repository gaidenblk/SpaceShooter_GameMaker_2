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
//Setando velocidade Horizontal do Boss
velocidade_horizontal = 5;

//Setando o estado de ataque do Boss
estado_atual = "estado 3";

//Setando o tempo de disparo
espera_tiro = 0;
delay_tiro = game_get_speed(gamespeed_fps) / 2;

//Setando tempo de estados
delay_estado = game_get_speed(gamespeed_fps) * 5;
espera_estado = delay_estado;

//Setando esquema de tiros
tiro_01 = function(_xpos) {
	instance_create_layer(x + _xpos, y + 20, "tiros", obj_inimigo_tiro01);
}

tiro_02 = function() {
	instance_create_layer(x, y + 50, "tiros", obj_inimigo_tiro02);
}

//Metodos dos estados de ataque
//Estado 1
estado_01 = function() {
	espera_tiro--
	if espera_tiro <= 0 {
		tiro_02();
		espera_tiro = delay_tiro / 2;
	}																  
}																	  

//Estado 2																	  
estado_02 = function() {
x += velocidade_horizontal;

	if (x >= room_width - sprite_width/2 || x <= sprite_width/2){
		velocidade_horizontal *= -1;
	}
	espera_tiro--
	if espera_tiro <= 0 {
	tiro_01(-160);
	tiro_01(160);
	espera_tiro = delay_tiro;
	}
}

// Estado 3

estado_03 = function() {
x += velocidade_horizontal;

	if (x >= room_width - sprite_width/2 || x <= sprite_width/2){
		velocidade_horizontal *= -1;
	}
	espera_tiro--
	if espera_tiro <= 0 {
		tiro_02();
		espera_tiro = delay_tiro * 2;
	}		
	if espera_tiro == delay_tiro {
		tiro_01(-160);
	}
	if espera_tiro == delay_tiro * 2 {
		tiro_01(160);
	}
}