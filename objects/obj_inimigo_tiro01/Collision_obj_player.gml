/// @description Se destruindo ao contato com player
instance_destroy();
//Destruindo o player
instance_destroy(other);
//Criando animação de impacto
instance_create_layer(x,y,"Tiros",obj_tiro_impacto);