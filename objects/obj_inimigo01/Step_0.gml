/// @description Status do inimigo

//Destruindo ao sair da Room por baixo
if y > room_height +30
{
	instance_destroy(id,false);
}

//Destruindo quando vida < 1
if inimigo_vida <= 0
{
	instance_destroy(id,true);	
}