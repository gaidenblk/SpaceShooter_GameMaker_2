/// @description Inserir descrição aqui

//Alternando os estados
alterna_estado();

//show_debug_message(espera_estado)

//debug do estado atual
//show_debug_message(estado_atual);

//debug vida Atual
//show_debug_message(vida_atual)

vida_atual = clamp(vida_atual, 0, vida_max)

if (estado_atual != "estado 4"){
		sprite_index = spr_boss_combate
		criou_minion = false;
}


if estado_atual == "estado 1" {
	//Codigos do estado 1
	estado_01();
}

if estado_atual == "estado 2" {
	//Codigos do estado 2
	estado_02();
}

if estado_atual == "estado 3" {
	//Codigos do estado 3
	estado_03();

}

if estado_atual == "estado 4" {
	//Codigos do estado 4
	estado_04()
}