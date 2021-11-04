/// @description Criando variaveis de movimentação
// Inherit the parent event
//event_inherited(); - deserdando
vspeed = 3;
//Criando disparo
inimigo_tiro = function()
{
if x > 0
	{
	instance_create_layer(x,y + sprite_height/3,"Tiros",obj_inimigo_tiro01);
	}	
}
//Mudando de direção
//Indo para um dos lados
movimentacao = function()
{
	if hspeed <> 0
	{
		hspeed = 0;
		vspeed = 0;
	}
	else if x < room_width/2
	{
		hspeed = 4;
		vspeed = 3;
	}
	else
	{
		hspeed = -4;
		vspeed = 3;
	}
}

//Parando brevemente
alarm[1] = room_speed*1.5;