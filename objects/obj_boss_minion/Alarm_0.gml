/// @description Executando disparos
inimigo_tiro();
if (!disparou) disparou = true;

//Disparando novamente
alarm[0] = game_get_speed(gamespeed_fps)/2;