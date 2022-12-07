/// @description Iniciando variáveis
//Velocidade base do player
velocidade = 5;
//Criando sistema de disparo
//Velocidade de repeticao do disparo
dspr_repet = 6;

//Tipos de disparo por level
//Disparo simples - Tiro1
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

//Disparo simples - Tiro2
disparosimples2 = function()
{
	instance_create_layer(x,y - sprite_height/2,"Tiros",obj_tiro_player2);	
	instance_create_layer(x + sprite_width/2.5,y - sprite_height/5,"Tiros",obj_tiro_player);
	instance_create_layer(x - sprite_width/2.5,y - sprite_height/5,"Tiros",obj_tiro_player);
}
//Disparo duplo
disparoduplo2 = function()
{
	instance_create_layer(x + sprite_width/5,y - sprite_height/5,"Tiros",obj_tiro_player2);
	instance_create_layer(x - sprite_width/5,y - sprite_height/5,"Tiros",obj_tiro_player2);
	instance_create_layer(x + sprite_width,y - sprite_height/9,"Tiros",obj_tiro_player);
	instance_create_layer(x - sprite_width,y - sprite_height/9,"Tiros",obj_tiro_player);
}
//Disparo triplo
disparotriplo2 = function()
{
	disparosimples2();
	disparoduplo2();
}

//Testando configurações de disparo e limite de tiros por vez
dspr_level = 1;
disparotrg = true;
dspr_qtd = 0;

//Metodo de evolucao de disparo por level
//Debug no momento
dspr_pow = function()
{
	if keyboard_check_pressed(ord("1")) && dspr_level <6
	{
		dspr_level++;
	}
	if keyboard_check_pressed(ord("2")) && dspr_level >1
	{
		dspr_level--;
	}		
}

//Metodo de aumento de cadencia de disparo
//Debug "disparoteste"
//Disparoteste seta os botões de disparo 1,2,3 - Config pra debug
disparoteste = function()
{
	if keyboard_check_pressed(ord("3")) && dspr_repet > 3
	{
		dspr_repet--;
	}
	if keyboard_check_pressed(ord("4")) && dspr_repet < 6
	{
		dspr_repet++;
	}
}
//Disparofire é a referencia de qual disparo será feita pela func atirando
disparofire = function()
{
	if dspr_level == 6
	{
		disparotriplo2();
	}
	else if dspr_level == 5
	{
		disparoduplo2();
	}
	else if dspr_level == 4
	{
		disparosimples2();
	}
	else if dspr_level == 3
	{
		disparotriplo();
	}
	else if dspr_level == 2
	{
		disparoduplo();
	}
	else if dspr_level == 1
	{
		disparosimples();
	}
}

//Disparando - 
//Definindo func atirando e condicionando a 3 tiros > vide Alarm[0] event
atirando = function()
{
	var	fire = keyboard_check(vk_space);
	if fire && disparotrg
		{
		disparofire();
		disparotrg = false;
		dspr_qtd++;
		//Aqui é definido a velocidade de repeticao
		alarm[0] = dspr_repet;
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
	velocidade = lerp(5,10,1.5)	
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