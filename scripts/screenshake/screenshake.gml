// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//ScreenShake
function screenshake(_shake)
{
	var screen = instance_create_layer(0,0,layer,obj_shake);
	screen.shake = _shake;
}

//Ganhando pontos com PowerUp
function ganhando_pontos(_pontos)
{
	if instance_exists(obj_controlador)
	{
		obj_controlador.ganha_pontos(_pontos);	
	}
}
