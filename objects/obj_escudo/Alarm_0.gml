/// @description Resetando o escudo

//Aqui verifico se a sprite chegou na primeira para se destruir
if image_index < 1
{
	instance_destroy();	
}

//Voltando a imagem em 1 frame a cada alarm
image_index--

//Reduzindo o alpha
image_alpha -= 0.2;

//Resetando o alarm
alarm[0] = 60;
