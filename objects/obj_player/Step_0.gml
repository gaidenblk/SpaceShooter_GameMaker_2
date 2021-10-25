/// @description Propriedades do player
//Criando a movimentação do player

var up, down, left, right, fire;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
fire = keyboard_check_pressed(vk_space);
//Movimentação
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//Disparo
if fire
{
instance_create_layer(x + sprite_width/3,y - sprite_height/5,"Tiros",obj_tiro_player);
instance_create_layer(x - sprite_width/3,y - sprite_height/5,"Tiros",obj_tiro_player);
}