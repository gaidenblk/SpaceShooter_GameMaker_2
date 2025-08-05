/// @description Spawnando inimigos - SOMENTE PARA DEBUG

//Spawnando inimigos

if !instance_exists(obj_inimigo01)
{
	repeat(5 + (level * 5))
	{
		inimigo();
	}
}

//Spawnando um powerup - DEBUG
//instance_create_layer(random_range(100,1820),-100,"Player",obj_powerup)

//Setando tempo de reativação
alarm[0] = game_get_speed(gamespeed_fps);