/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Setando as variaveis locais
var vida_boss, boss_x, boss_y

//Convertendo o valor da vida do boss em %
vida_boss = (vida_atual/vida_max)*100

//Corrigindo posicionamento da barra adicionando a conversão do tamanho da viewport
//Ex: De 1920 para 1280 pro x, De 1080 para 720 pro y
//boss_x = round(x*0.6667);
//boss_y = round(y*0.6667);

//Desenhando a barra de vida do chefe
draw_healthbar(40,25,500,10, vida_boss,c_black,c_red,c_lime,0,true,true)
