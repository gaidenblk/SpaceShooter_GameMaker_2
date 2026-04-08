/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Executa somente se o flag do destroy estiver como true
layer_sequence_create("Sequences",x,y,sq_boss_morreu);
obj_controlador.jogo_finalizado = true;
global.total_inimigos++

//Leva consigo seus minions caso tenha spawnado
instance_destroy(obj_boss_minion);

//Determinando o ganho de pontos
ganhando_pontos(ponto);

//Resetando a musica
audio_stop_sound(snd_aggressor)
audio_play_sound(snd_darkling,1,true)

//Screenshake
screenshake(shake);