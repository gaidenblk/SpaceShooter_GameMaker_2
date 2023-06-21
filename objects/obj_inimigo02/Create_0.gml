/// @description Criando variaveis de movimentação
// Inherit the parent event
event_inherited();

//Definindo valor de ponto do inimigo
ponto = 25;

//Definindo vida do inimigo 2
inimigo_vida = 2;

//Chance de drop de item
chance = 35;

//Mudando de direção
//Indo para um dos lados
movimentacao = function()
{	
	//Executa somente se estiver acima da 1/3 da tela
	if y < room_height/3
	{
		//Parando
		if hspeed <> 0 || vspeed <> 0
		{
		hspeed = 0;
		vspeed = 0;
		}
		//Da esquerda para direita
		else if x < room_width/2
		{
		hspeed = 4;
		vspeed = 3;
		}
		//Da direita para esquerda
		else
		{
		hspeed = -4;
		vspeed = 3;
		}
	}
}
//Criando a função de tiro
inimigo_tiro = function()
{
	if y >= 0
	{
	instance_create_layer(x,y + sprite_height/2.5,"Tiros",obj_inimigo_tiro02);	
	}
}