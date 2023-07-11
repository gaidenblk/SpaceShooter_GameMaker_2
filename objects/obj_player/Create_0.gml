/// @description Iniciando variáveis
//Vidas iniciais do player
vida = 3;

//Velocidade base do player
velocidade = 5;

//Taxa de disparos
espera_tiro = 10;
qtd_tiros = 0;
qtd_tiros_max = 3;

//Level do tiro
level_tiro = 1;

//Variavel que determina o tipo de disparo
qualotiro = "nenhum";

//Limitando o player dentro da tela
limitedatela = function()
{
	//Vertical
	if y > 1080 - sprite_height/2
	{
		y = 1080 - sprite_height/2;
	}
	if y < 0 + sprite_height/2
	{
		y = 0 + sprite_height/2;
	}
	//Horizontal
	if x > 1920 - sprite_height/2
	{
		x = 1920 - sprite_width/2;
	}
	if x < 0 + sprite_width/2
	{
		x = 0 + sprite_width/2;
	}	
}

//Criando função de movimentação do player
movimenta = function()
{
	var up, down, left, right;
	up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	y += (down - up) * velocidade;
	x += (right - left) * velocidade;
}

//Ativando Escudo ao apertar tecla "E"
escudo = function()
{
	//Criando o escudo somente se ele não existe
	if !instance_exists(obj_escudo)
	{
		var _ativar = keyboard_check_pressed(ord("E"))	
		if _ativar
		{
			//Aqui eu gero a criação do escudo e seto qual o id do alvo a ser criado e seguido
			var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo)	
			_escudo.alvo = id;
		}
	}
}

//Criando o método de disparo
atirando = function()
{
	var fire = keyboard_check(vk_space);
	if fire && alarm[0] == -1
	{
		var _tiro1, _tiro2;
		//Ajustando frequencia de disparo pelo Alarm[0]
		alarm[0] = espera_tiro;
		qtd_tiros++
		
		//Desenhando os disparos na nave
		//Tiro Level 1
		if level_tiro == 1
		{
			_tiro1 = instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player);		
		}
		
		//Tiro Level 2
		else if level_tiro == 2
		{
			_tiro2 = instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player2);
		}
		
		//Tiro Level 3
		else if level_tiro == 3
		{
			tiro3();			
		}
		
		//Tiro Level 4
		else if level_tiro == 4
		{
			tiro4();
		}
		
		//Tiro Level 5
		else if level_tiro == 5
		{
			tiro3();
			tiro4();
		}
	}
}

//Metodos tiro 3 e 4
//Metodo tiro 3
tiro3 = function()
{
	var _tiro1, _direcao;
	//Tiro espalhado usando repeat
	_direcao = 75;
	repeat(3)
	{
		_tiro1 = instance_create_layer(x,y-sprite_height/5,"Tiros",obj_tiro_player)
		_tiro1.direction = _direcao;
		_tiro1.image_angle = _tiro1.direction - 90;
		_direcao +=15;
	}
}

//Metodo tiro 4
tiro4 = function()
{
	var _tiro2;
	//Tiro da esquerda
	_tiro2 = instance_create_layer(x-sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
	_tiro2.hspeed = -5;
	
	//Tiro da direita
	_tiro2 = instance_create_layer(x+sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
	_tiro2.hspeed = 5;
}

//Power UPGRADE
///@method level_up(chance)
level_up = function(_chance)
{
	if _chance >= 90
	{
		if level_tiro < 5
		{
			level_tiro++;
			qtd_tiros_max++;
		}
	}
	else if _chance >= 45
	{
		if velocidade < 10
		{
			velocidade += 0.5;
		}
	}
	else
	{
		if espera_tiro > 3
		{
			espera_tiro--;
		}
	}
}

//Perde Vida
///@method perde_vida()
perde_vida = function()
{
	if vida > 1
	{
		vida--;
	}
	else
	{
		instance_destroy();
	}
}
