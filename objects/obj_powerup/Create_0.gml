/// @description Iniciando powerup

//POWER UP
//Determinando probabilidade e cada powerup
chance = random(100);
//Cor do tiro
if chance > 90
{
	cores = c_red;	
}
else if chance > 45
{
	cores = c_blue;	
}
else
{
	cores = c_green;	
}

//determinando velocidade de descida
speed = 2;
direction = irandom(359);

