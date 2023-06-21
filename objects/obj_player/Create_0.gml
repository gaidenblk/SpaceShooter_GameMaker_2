/// @description Iniciando variáveis
//Velocidade base do player
velocidade = 5;

//Taxa de disparos
espera_tiro = 15;

//Level do tiro
level_tiro = 1;

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

//Criando o método de disparo
atirando = function()
{
	var fire = keyboard_check(vk_space);
	if fire && alarm[0] == -1
	{
		//Ajustando frequencia de disparo pelo Alarm[0]
		alarm[0] = espera_tiro;
		
		//Desenhando os disparos na nave
		//Tiro Level 1
		if level_tiro == 1
		{
			instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player);
		}
		
		//Tiro Level 2
		else if level_tiro == 2
		{
			instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player2);
		}
		
		//Tiro Level 3
		else if level_tiro == 3
		{
			instance_create_layer(x-sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player)
			instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player)
			instance_create_layer(x+sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player)
		}
		
		//Tiro Level 4
		else if level_tiro == 4
		{
			instance_create_layer(x-sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
			instance_create_layer(x+sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
		}
		
		//Tiro Level 5
		else if level_tiro == 5
		{
			instance_create_layer(x-sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
			instance_create_layer(x,y-sprite_height/3,"Tiros",obj_tiro_player)
			instance_create_layer(x+sprite_width/3,y-sprite_height/5,"Tiros",obj_tiro_player2)
		}
	}
}

//Power UPGRADE


//Escudo

