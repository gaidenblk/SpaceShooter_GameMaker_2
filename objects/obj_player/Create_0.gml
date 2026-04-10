/// @description Iniciando variáveis
//Vidas iniciais do player
vida = 3;

//Iframes Base
iframes = game_get_speed(gamespeed_fps) * 2;
if_delay = iframes;
pisca = 1
alterna_pisca = 0.3

//Quantidade de escudos iniciais
qtd_escudo = 3;

//Determinando o escudo do player
meu_escudo = noone;

//Velocidade base do player
velocidade = 5;

//Variaveis do modo de disparo sequencial e por quantidade
espera_tiro = 0;
delay_tiro = 10;
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
	y = clamp(y, 0 + sprite_height/2, room_height - sprite_height/2)
	//Horizontal
	x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2)
}

//Criando função de movimentação do player
image_speed = 0;
image_index = clamp(image_index, 0, 16);
movimenta = function()
{
	var up, down, left, right;
	up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	y += (down - up) * velocidade;
	x += (right - left) * velocidade;
	
var fr_loop_esq ,fr_loop_dir, fr_esq, fr_dir, fr_idle;
//Baseado nos frames da imagem
fr_loop_esq = image_index >= 6 && image_index <= 10
fr_loop_dir = image_index >= 12 && image_index <= 16
fr_esq = image_index > 4 && image_index <= 6
fr_dir = image_index > 10 && image_index <= 12
fr_idle = image_index <= 4

	if (!left && !right) {
		
		//Verificando se está nos loops de cada lateral e joga pro ultimo frame de retorno
		if (fr_loop_esq) image_index = 6;
		if (fr_loop_dir) image_index = 12;
	
		//Caso esteja na lateral esquerda faz o retorno pro frame do idle
		if (fr_esq) image_index -= 0.2
		//Caso esteja na lateral direita faz o retorno pro frame do idle
		if (fr_dir) image_index -= 0.2
	
		//Assim que atinge o limiar do frame joga de volta pro frame inicial do Idle
		//Voltando da esquerda pro idle
		if image_index >= 3.8 && image_index <= 4 image_index = 0
		//Voltando da direita pro idle
		if image_index >= 9.8 && image_index <= 10 image_index = 0
		
		//Retorna pra animação do idle
		if (fr_idle) image_index += 0.2;

	} else if (!fr_loop_dir && !fr_dir && left) {
		//Movimentando para esquerda
		//Garante que começa na faixa certa
		if (fr_idle) image_index = 4;

		image_index += 0.2;

		//Quando chega no fim do loop, mantém nele
		if (image_index >= 10) image_index = 6;
		
	} else if (!fr_loop_esq && !fr_esq && right) {
		//Movimentando para direita
		//Garante que começa na faixa certa
		if (fr_idle) image_index = 10;

		image_index += 0.2;

		//Quando chega no fim do loop, mantém nele
		if (image_index >= 16) image_index = 12;
		
	} else if (!fr_idle && (left || right)) {
		//caso esteja em um lado e pressione para o outro faz a transicao reversa
		image_index -= 0.3
		
		//Corrige o frame de inicio pra esquerda
		if (left && image_index <= 10) image_index = 3.8;
	}
}

//Ativando Escudo ao apertar tecla "E"
escudo = function()
{
	//Criando o escudo somente se ele não existe
	//E quando a quantidade for maior que 0
	
	var _ativar = keyboard_check_pressed(ord("E"))	
	if (_ativar && qtd_escudo > 0 && !meu_escudo) {

			//Aqui eu gero a criação do escudo e seto qual o id do alvo a ser criado e seguido
			var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo)	
			_escudo.alvo = id;
			meu_escudo = _escudo;
			qtd_escudo--;
		}
}

//Criando o método de disparo
atirando = function()
{
	//Resfriando o tempo de disparo
	espera_tiro--;
	espera_tiro = clamp(espera_tiro,-1,30);
	
	var fire = keyboard_check(vk_space);
	if fire && espera_tiro <= 0
	{
		//Tocando audio ao efetuar disparo
		audio_play_sound(sfx_laser1,1,false)
		
		//Ajustando frequencia de disparo pelo quantidade
		qtd_tiros++
		//Setando delay de disparo
		if qtd_tiros >= qtd_tiros_max
		{
			espera_tiro = delay_tiro * 2;	
			qtd_tiros = 0;
		}else
		{
			espera_tiro = delay_tiro;
		}
		
		var _tiro1, _tiro2;
		
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
///@method power_up(chance)
power_up = function(_chance)
{
	if _chance >= 60
	{
		qtd_tiros_max++;
		if level_tiro < 5
		{
			level_tiro++;
		}
		else
		{
			ganhando_pontos(100);
		}
		
	}
	else if _chance >= 30
	{
		if velocidade < 10
		{
			velocidade += 2;
		}
		else
		{
			ganhando_pontos(25);
		}
	}
	else
	{
		if delay_tiro > 3
		{
			delay_tiro--
		}
		else
		{
			ganhando_pontos(10);
		}
	}
}

//Perde Vida
///@method perde_vida()
perde_vida = function()
{
	if if_delay >= iframes && !meu_escudo {
		vida--;
		if_delay = 0;
		
		//Tocando audio ao levar dano
		audio_play_sound(sfx_explosion, 1, false,,,5)
		screenshake(5);
	}
	if vida < 0 {
		instance_destroy();
		screenshake(25);
	}
}

//Efeito dos iframes
iframes_pisca = function() {
	if if_delay < iframes {
	if_delay++
	
		if pisca >= 1 || pisca <= 0.5 {
			alterna_pisca *= -1
		}
		pisca += alterna_pisca;	
	}	
}
