/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if image_alpha < 1 && !disparou {
	image_alpha += 0.01
}
//Destruindo quando vida < 1
if inimigo_vida <= 0
{
	instance_destroy(id,true);	
}

if escala > 1.3 || escala < 0.8 {
	aumento_escala *= -1
}

escala += aumento_escala;

efeito_dano()