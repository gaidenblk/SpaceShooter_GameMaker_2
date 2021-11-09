/// @description Alterando movimentação do inimigo02

//Impedindo inimigo de airar depois de atravessar 1/3 da tela
if y > room_height/3
{
	inimigo_tiro = false;
}
//Escolhendo a direção
movimentacao();
//Herdando eventos do inimigo01
event_inherited();