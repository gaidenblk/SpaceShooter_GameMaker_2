/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Setando as variaveis locais
var vida_minion, minion_x, minion_y

//Convertendo o valor da vida do boss em %
vida_minion = (inimigo_vida/vida_max)*100

//Corrigindo posicionamento da barra adicionando a conversão do tamanho da viewport
//Ex: De 1920 para 1280 pro x, De 1080 para 720 pro y
minion_x = round(x*0.6667);
minion_y = round(y*0.6667);

//Desenhando a barra de vida do minion
draw_healthbar(minion_x-50,minion_y-60,minion_x+40,minion_y-70, vida_minion,c_black,c_red,c_lime,0,true,true)
