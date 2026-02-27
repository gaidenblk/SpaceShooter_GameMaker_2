/// @description Iniciando variáveis

//Definindo valor de ponto do inimigo
ponto = 50;
//Determinando vida do inimigo
vida_max = 15
inimigo_vida = vida_max;
//Chance do inimigo dropar o item
chance = 100;
//Quantidade de Shake
shake = 7;
//Escala do minion
escala = 1;
aumento_escala = 0.01;
//Variavel de controle de primeiro disparo
disparou = false;

//Criando função atirando
//Fazendo o inimigo atirar SE estiver dentro da tela
inimigo_tiro = function() {
if y > 0 {
		instance_create_layer(x,y,"Tiros",obj_boss_minion_tiro);
	}	
}

//Drop de ITEM
dropa_item = function(_chance) {
	var valor = random(100);
	
	//Se o valor for menor que a chance ele cria o item
	//E se o inimigo estiver um pouco abaixo do limite superior da tela
	if valor < _chance && y > 60 {
		instance_create_layer(x,y,"Tiros",obj_powerup);
	}
}

if place_meeting(x, y, obj_boss_minion) y -= 128;

image_alpha = 0;

//Acionando o alarm para disparo
alarm[0] = game_get_speed(gamespeed_fps)*2;
