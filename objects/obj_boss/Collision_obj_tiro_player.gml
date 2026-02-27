/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (vida_atual > 0 && estado_atual != "estado 4"){
	
vida_atual -= obj_tiro_player.dspr_dano;

}

if (vida_atual <= 0) {
	instance_destroy()
}

instance_destroy(other);
