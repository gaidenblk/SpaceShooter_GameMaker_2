/// @description Spawnando inimigos - SOMENTE PARA DEBUG
//Setando tempo de reativação
alarm[0] = choose(30,45,60,90);
//Spawnando inimigo 01
inimigo1();

//Determinando spawn do inimigo 02 com base na quantidade de inimigo 01
if qtd_inm01 > 5
{
	inimigo2();
	//Resetando contador do inimigo 01 a 0
	qtd_inm01 = 0;
}
if qtd_inm02 > 3
{
	//Despawnando inimigos na marca de 5 inimigos 02
	alarm[0] = 0;
}