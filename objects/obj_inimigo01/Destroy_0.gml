/// @description Executando animação de explosão
//Executa somente se o flag do destroy estiver como true
instance_create_layer(x,y,"Inimigos",obj_explosao);

//Determinando o ganho de pontos
ganhando_pontos(ponto);

//Dropando o item
dropa_item(chance);

//Screenshake
screenshake(shake);