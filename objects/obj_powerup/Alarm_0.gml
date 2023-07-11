/// @description Desvanecendo com o tempo

image_alpha -= 0.1;

if image_alpha < 0.4
{
	instance_destroy(id,false)	
}

alarm[0] = 60;

