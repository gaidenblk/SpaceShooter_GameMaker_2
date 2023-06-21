/// @description Desvanescendo com o tempo

image_alpha -= 0.001;

if image_alpha <= .1
{
	instance_destroy(id ,false)	
}