/// @description Fazendo o inimigo atirar SE estiver dentro da tela
if x > 0
{
instance_create_layer(x,y + sprite_height/3,"Tiros",obj_inimigo_tiro01);
}
//Disparando novamente
alarm[0] = room_speed * 1.5;