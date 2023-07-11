/// @description Movimento do Escudo

//Setando config para escudo existir somente tendo um alvo
if !alvo || !instance_exists(alvo)
{
	instance_destroy();	
}

//Fazendo o escudo seguir um alvo
x = alvo.x;
y = alvo.y;

