/// @description Spawnando inimigos - SOMENTE PARA DEBUG

//Spawnando inimigos

if !instance_exists(obj_inimigo01)
{
	repeat(5 + (level * 2))
	{
		inimigo();
	}
}

//Spawnando um powerup - DEBUG
instance_create_layer(random_range(100,1890),-100,"Player",obj_powerup)

//Setando tempo de reativação
alarm[0] = room_speed;