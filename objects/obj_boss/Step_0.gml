/// @description Inserir descrição aqui

//debug do estado atual
show_debug_message(estado_atual);

//Alternando os estados
show_debug_message(espera_estado)
espera_estado--

if(espera_estado <= 0){
	//Escolhendo outro estado
	estado_atual = choose("estado 1", "estado 2", "estado 3");
	espera_estado = delay_estado;
}


if estado_atual == "estado 1"
{
	//Codigos do estado 1
	estado_01();
}else if estado_atual == "estado 2"
{
	//Codigos do estado 2
	estado_02();
}else if estado_atual == "estado 3"
{
	//Codigos do estado 3
	estado_03();

}else if estado_atual == "estado 4"
{
	//Codigos do estado 4

}

