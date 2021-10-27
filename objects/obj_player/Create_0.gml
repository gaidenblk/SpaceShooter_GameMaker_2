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