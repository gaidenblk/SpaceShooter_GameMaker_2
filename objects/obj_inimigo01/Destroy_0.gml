/// @description Executando animação de explosão
//Executa somente se o flag do destroy estiver como true
instance_create_layer(x,y,"Inimigos",obj_explosao);

//Determinando o ganho de pontos
if instance_exists(obj_controlador)
{
	obj_controlador.ganha_pontos(ponto);
}

