/// @description Propriedades do player
//Criando a movimentação do player
movimenta();

//Atirando
atirando();

if keyboard_check_pressed(vk_up) && level_tiro < 5
{
	level_tiro++;	
}
if keyboard_check_pressed(vk_down) && level_tiro > 1
{
	level_tiro--;	
}


//Mantendo player nos limites da tela
limitedatela();

