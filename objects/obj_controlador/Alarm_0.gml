/// @description Spawnando inimigos - SOMENTE PARA DEBUG

//Spawnando inimigos

if !instance_exists(obj_inimigo01)
{
	repeat(5 + (level * 5))
	{
		inimigo();
	}
}

//Preparando a entrada do BOSS
if level > 9 {
	if instance_exists(obj_inimigo01) instance_destroy(obj_inimigo01,false)
	layer_sequence_create("Sequences", room_width / 2, 544,sq_boss_entrada)
	
	//Dando sequencia a entrada da musica do BOSS
	audio_stop_sound(snd_darkling)
	return
}

//Setando tempo de reativação
alarm[0] = game_get_speed(gamespeed_fps);