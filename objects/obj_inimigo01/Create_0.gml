/// @description Iniciando variáveis
//Fazendo o Inimigo ir pra baixo
vspeed = 3;

//Criando função atirando
//Fazendo o inimigo atirar SE estiver dentro da tela
inimigo_tiro = function()
{
if x > 0
	{
	instance_create_layer(x,y + sprite_height/3,"Tiros",obj_inimigo_tiro01);
	}	
}
//Acionando o alarm para disparo
alarm[0] = room_speed/2;