/// @description Propriedades do player
//Verificando primeiro se está tocando na tela
var _toque = mouse_check_button(mb_left)

//Criando a movimentação do player
movimenta(_toque);

//Atirando
atirando(_toque);

//Ativando Escudo
escudo(false);

//Renovando os iframes
iframes_pisca();

//Mantendo player nos limites da tela
limitedatela();
