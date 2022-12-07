/// @description Reativando o disparo
//Condicionando o disparo a 3 tiros por vez
disparotrg = true;
if dspr_qtd == 3
{
	disparotrg = false;
	dspr_qtd = 0;
	alarm[0] = room_speed - (room_speed + 45)/ dspr_repet;
}

if dspr_qtd > 0
{
	alarm[1] = room_speed*1.2;
}
