/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Executa somente se o flag do destroy estiver como true
layer_sequence_create("Sequences",x,y,sq_boss_morreu);

//Leva consigo seus minions caso tenha spawnado
instance_destroy(obj_boss_minion);

//Determinando o ganho de pontos
ganhando_pontos(ponto);

//Screenshake
screenshake(shake);