/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Definindo a fonte do texto
draw_set_font(fnt_pontos)
	
//Desenhando o texto

draw_text( 25, 250, "Total Pontos: " + string(round(pontos)));
draw_text( 25, 400, "Total Morreu: " + string(global.total_mortes));
draw_text( 25, 550, "Total Abates: " + string(global.total_inimigos));
	
//Resetando a fonte
draw_set_font(-1)

if (pontos < global.max_pontos) {
	var _pts_inc = global.max_pontos * 0.02
	pontos += _pts_inc
}
