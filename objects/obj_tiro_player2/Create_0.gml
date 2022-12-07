/// @description Base do disparo
// You can write your code in this editor
// Inherit the parent event
event_inherited();

//Determinando X do disparo para waveloop
x_posr = 0;
x_posl = 0;

if x > x_pos
	{
	x_posr = x + sprite_width/2.5;
	}
else if x < x_pos
	{
	x_posl = x - sprite_width/2.5;
	}
	
//Determinando waveloop com base no x do proprio tiro
if x > x_pos
	{
	x_pos = x_posr;	
	}
else if x < x_pos
	{
	x_pos = x_posl
	}

//Determinando valor de dano
dspr_dano = 2;