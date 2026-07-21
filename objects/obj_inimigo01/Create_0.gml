/// @description Iniciando variáveis
//Fazendo o Inimigo ir pra baixo
vspeed = 3;

//Definindo valor de ponto do inimigo
ponto = 10;
//Determinando vida do inimigo
vida_max = 3
inimigo_vida = vida_max;
//Efeito de dano
pisca_cor = 1;
alterna_pisca = 0.3;
cor_base = -1;
//Chance do inimigo dropar o item
chance = 20;
//Quantidade de Shake
shake = 7;

//Criando função atirando
//Fazendo o inimigo atirar SE estiver dentro da tela
inimigo_tiro = function()
{
if y > 0
	{
		instance_create_layer(x,y + sprite_height/3,"Tiros",obj_inimigo_tiro01);
	}	
}

//Impedindo inimigos de spawnar um em cima do outro
if place_meeting(x,y,obj_inimigo01)
{
	//Sem executar evendo Destroy
	instance_destroy(id,false);	
}

//Drop de ITEM
dropa_item = function(_chance)
{
	var valor = random(100);
	
	//Se o valor for menor que a chance ele cria o item
	//E se o inimigo estiver um pouco abaixo do limite superior da tela
	if valor < _chance && y > 60
	{
		instance_create_layer(x,y,"Tiros",obj_powerup);
	}
}

//Acionando o alarm para disparo
alarm[0] = game_get_speed(gamespeed_fps)/2;

//Efeito de Dano
efeito_dano = function() {
	if inimigo_vida < vida_max {
	
		if pisca_cor >= 1 || pisca_cor <= 0.5 {
			alterna_pisca *= -1
		}
		pisca_cor += alterna_pisca;	
	}	
}
