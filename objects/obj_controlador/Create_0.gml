/// @description Iniciando variáveis

//Função de spawn inimigo 01
inimigo = function()
{
	//Setando variáveis de spanw dos inimigos com base no level
	var inimigo_x = obj_inimigo01;
	var inimigo_rand = random_range(0,level);

	//Determinando spawn do inimigo 02 com base na quantidade de Level
	if inimigo_rand > 2
	{
		inimigo_x = obj_inimigo02	
	}
	
	//Determinando area de spawn do inimigo
	var x_pos, y_pos;
	y_pos = irandom_range(-40,-70);
	x_pos = irandom_range(20,room_width-20);
	instance_create_layer(x_pos,y_pos,"Inimigos",inimigo_x);
	
}

//Setando Alarm do Spawn
alarm[0] = 30;

//Criando esquema de pontos
pontos = 0;

//Iniciando Sistema de level
level = 1;

///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos;	
	
	//Subindo de Level
	if pontos >= level * 200
	{
		//Elevando level e criando loop
		level++
	
	}
}