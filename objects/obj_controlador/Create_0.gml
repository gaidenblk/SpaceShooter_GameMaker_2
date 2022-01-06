/// @description Iniciando variáveis
//Definindo quantidade temporaria de inimigos
qtd_inm01 = 0;
qtd_inm02 = 0;

//Função de spawn inimigo 01
inimigo1 = function()
{
	var x_pos, y_pos;
	y_pos = irandom_range(-40,-70);
	x_pos = irandom_range(20,room_width-20);
	instance_create_layer(x_pos,y_pos,"Inimigos",obj_inimigo01);
	qtd_inm01++;
}
//Função de spawn inimigo 02
inimigo2 = function()
{
	var x_pos, y_pos;
	y_pos = irandom_range(-40,-70);
	x_pos = irandom_range(20,room_width-20);
	instance_create_layer(x_pos,y_pos,"Inimigos",obj_inimigo02);	
	qtd_inm02++;
}
alarm[0] = 30;