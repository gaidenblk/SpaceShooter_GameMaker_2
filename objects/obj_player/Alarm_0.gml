/// @description Frequencia de disparo
if qtd_tiros >= qtd_tiros_max
{
	alarm[0] = 30 - qtd_tiros_max;
	qtd_tiros = 0;
}