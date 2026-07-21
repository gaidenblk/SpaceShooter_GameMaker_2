/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Setando as variaveis locais
var vida_minion, minion_x, minion_y

//Convertendo o valor da vida do boss em %
vida_minion = (inimigo_vida/vida_max)*100

//Corrigindo posicionamento da barra adicionando a conversão do tamanho da viewport
//Ex: De 1200 para 720 pro x, De 900 para 540 pro y
minion_x = round(x*0.6);
minion_y = round(y*0.6);

//Ajustando posicionamento
if (x < room_width / 2) minion_x += 15 else minion_x -= 15

//Desenhando a barra de vida do minion
draw_healthbar(minion_x-30,minion_y-30,minion_x+30,minion_y-40, vida_minion,c_black,c_red,c_lime,0,true,true)
