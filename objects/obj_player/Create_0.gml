/// @description Iniciando variáveis
//Velocidade base do player
velocidade = 5;
//Criando função "Atirando"
atirando = function()
{
var	fire = keyboard_check_pressed(vk_space);
	if fire
		{
		instance_create_layer(x + sprite_width/3,y - sprite_height/5,"Tiros",obj_tiro_player);
		instance_create_layer(x - sprite_width/3,y - sprite_height/5,"Tiros",obj_tiro_player);
		}	
}
//Criando função de movimentação do player
movimenta = function()
{
	up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);	
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