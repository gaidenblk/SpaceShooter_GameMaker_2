/// @description Propriedades do player
//Criando a movimentação do player

var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up) * velocidade;
x += (right - left) * velocidade;