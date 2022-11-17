/// @description Spawnando inimigos - SOMENTE PARA DEBUG

//Spawnando inimigos

if !instance_exists(obj_inimigo01)
{
	repeat(5 + (level * 2))
	{
		inimigo();
	}
}

//Setando tempo de reativação
alarm[0] = room_speed;