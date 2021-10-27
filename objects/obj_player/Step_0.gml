/// @description Propriedades do player
//Criando a movimentação do player
movimenta();

//Movimentação
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//Atirando
atirando();