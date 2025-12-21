/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var vida_boss, boss_x, boss_y
vida_boss = (vida_atual/vida_max)*100
boss_x = (x*0.6667);
boss_y = (y*0.6667);

draw_healthbar(boss_x-100,boss_y-180,boss_x+ 100,boss_y-160, vida_boss,c_black,c_red,c_lime,0,true,true)

show_debug_message(boss_x)
