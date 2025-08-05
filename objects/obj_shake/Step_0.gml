/// @description Fazendo tremer

//Tremendo para os lados
view_xport[0] = random_range(-shake, shake);

//Tremendo cima a baixo
view_yport[0] = random_range(-shake, shake);

//Reduzindo com o tempo
shake *= 0.95;

//Se auto destruindo depois de fraco
if shake <= 0.5
{
	instance_destroy();	
}

