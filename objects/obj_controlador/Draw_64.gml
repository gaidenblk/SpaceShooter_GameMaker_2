/// @description Mostrando pontos na tela

draw_text( 25, 85, "Pontos :" + string(pontos));
draw_text( 25, 100, "Level :" + string(level));
draw_text( 25, 115, "Debug Total Pontos:" + string(global.max_pontos));
draw_text( 25, 130, "Debug Total Morreu:" + string(global.total_mortes));
draw_text( 25, 145, "Debug Total Mortes:" + string(global.total_inimigos));
draw_text( 25, 160, "Debug Mortes Partida:" + string(obj_controlador.inimigos_mortos));