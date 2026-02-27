// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//ScreenShake
function screenshake(_shake)
{
	var screen = instance_create_layer(0,0,layer,obj_shake);
	screen.shake = _shake;
}

//Ganhando pontos com PowerUp
function ganhando_pontos(_pontos)
{
	if instance_exists(obj_controlador)
	{
		obj_controlador.ganha_pontos(_pontos);	
	}
}

//Destruindo a sequence de entrada do BOSS
function destroi_seq() {
	var a = layer_get_all_elements("Sequences");
	for (var i = 0; i < array_length(a); i++) {
	    if layer_get_element_type(a[i]) == layerelementtype_sequence {
	        var ins = layer_sequence_get_instance(a[i])
			var seq_name = ins.sequence.name
			show_debug_message(seq_name)
			if (seq_name == "sq_boss_entrada") {
				instance_create_layer(960,288,"Boss",obj_boss)
			}
			layer_sequence_destroy(a[i]);
	    }
	}
}