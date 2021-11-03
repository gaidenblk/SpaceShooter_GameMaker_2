/// @description Iniciando variáveis
//Base do disparo
global.disparo = 0
//Função de spawn inimigo 01
inimigo1 = function()
{
instance_create_layer(x_pos1,-40,"Inimigos",obj_inimigo01);	
}
//Função de spawn inimigo 02
inimigo2 = function()
{
instance_create_layer(x_pos2,-40,"Inimigos",obj_inimigo02);	
}
alarm[0] = 30;