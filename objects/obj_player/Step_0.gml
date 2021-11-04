/// @description Propriedades do player
//Criando a movimentação do player
movimenta();
spd_boost();

//Movimentação
y += (down - up) * velocidade;
x += (right - left) * velocidade;

//Mantendo player nos limites da tela
limitedatela();

//Atirando
atirando();
//Verificando função de disparo botões
disparoteste();