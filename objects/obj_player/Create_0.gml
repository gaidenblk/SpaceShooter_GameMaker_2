/// @description Iniciando variáveis
//Velocidade base do player
velocidade = 5;
//Criando sistema de disparo
//Tipos de disparo
//Disparo simples
disparosimples = function()
{
	instance_create_layer(x,y - sprite_height/2,"Tiros",obj_tiro_player);	
}
//Disparo duplo
disparoduplo = function()
{
	instance_create_layer(x + sprite_width/2.5,y - sprite_height/5,"Tiros",obj_tiro_player);
	instance_create_layer(x - sprite_width/2.5,y - sprite_height/5,"Tiros",obj_tiro_player);
}
//Disparo triplo
disparotriplo = function()
{
	disparosimples();
	disparoduplo();
}
//Testando configurações de disparo e limite de tiros por vez
disparo = 0;
disparotrg = true;
dspr_qtd = 0;
//Disparoteste seta os botões de disparo 1,2,3
disparoteste = function()
{
	if keyboard_check_pressed(ord("1"))
	{
		disparo = 0
	}
	if keyboard_check_pressed(ord("2"))
	{
		disparo = 1
	}
	if keyboard_check_pressed(ord("3"))
	{
		disparo = 2
	}
}
//Disparofire é a referencia de qual disparo será feita pela func atirando
disparofire = function()
{
	if disparo = 2
	{
	disparotriplo();
	}
	else if disparo = 1
	{
	disparoduplo();
	}
	else
	{
	disparosimples();
	}
}
//Definindo func atirando e condicionando a 3 tiros > vide Alarm[0] event
atirando = function()
{
	var	fire = keyboard_check(vk_space);
	if fire && disparotrg
		{
		disparofire();
		disparotrg = false;
		dspr_qtd++;
		alarm[0] = room_speed/7;
		alarm[1] = room_speed*0.7;
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
//Speedboost
spd_boost = function()
{
	var spdbst;
	spdbst = keyboard_check(vk_shift);
	if spdbst
	{
	velocidade = 8;	
	}
	else
	{
	velocidade = 5;	
	}
}
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