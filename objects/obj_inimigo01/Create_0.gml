/// @description Iniciando variáveis
//Fazendo o Inimigo ir pra baixo
vspeed = 3;

//Definindo valor de ponto do inimigo
ponto = 10;

//Determinando vida do inimigo
inimigo_vida = 1;

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


//Acionando o alarm para disparo
alarm[0] = room_speed/2;