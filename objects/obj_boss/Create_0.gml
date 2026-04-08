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

//Setando a vida do Boss
vida_max = 1500;
vida_atual = vida_max;

//Quantidade de Shake
shake = 15;

//Definindo valor de ponto do inimigo
ponto = 500;

//Setando velocidade Horizontal do Boss
velocidade_horizontal = 5;

//Setando o estado de ataque do Boss
estado_atual = "estado 1";

//Variavel de controle da geração dos minions
criou_minion = false;

//Setando o tempo de disparo
espera_tiro = 0;
delay_tiro = game_get_speed(gamespeed_fps) / 2;

//Setando tempo de estados
delay_estado = game_get_speed(gamespeed_fps) * 5;
espera_estado = delay_estado;

//Iniciando musica ao entrar na room
audio_play_sound(snd_aggressor,1,true)

//Setando esquema de ganhar vida
///@method ganha_vida(vida recebida por disparo)
ganha_vida = function(_vida) {
	vida_atual += _vida;
}

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

	if (x >= room_width - sprite_width/2 || x <= sprite_width/2) {
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

estado_04 = function() {	
	sprite_index = spr_boss_escuro
	if (x != round(room_width / 2) && x > room_width / 2) x -= 2
	if (x != round(room_width / 2) && x < room_width / 2) x += 2
	if !criou_minion {
		instance_create_layer(room_width - room_width + 85, room_height / 2, "Boss", obj_boss_minion)
		instance_create_layer(room_width - 85, room_height / 2, "Boss", obj_boss_minion)
		criou_minion = true;
	}

	if (!instance_exists(obj_boss_minion) && estado_atual == "estado 4") {
		estado_atual = "estado 1"
		espera_estado = delay_estado;	
	}
}

alterna_estado = function() {
	espera_estado--
	if(espera_estado <= 0){
		//Escolhendo outro estado
		estado_atual = (vida_atual < vida_max / 2) 
		? choose("estado 1", "estado 2", "estado 3", "estado 4") : choose("estado 1", "estado 2", "estado 3");
		espera_estado = (estado_atual == "estado 4" ? game_get_speed(gamespeed_fps) * 10 : delay_estado);
	}
}