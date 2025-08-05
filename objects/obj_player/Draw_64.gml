/// @description Mostrando Dados para o Jogador

//Desenhando a vida do player
//Pegando valor do limite da altura da Viewport para o Y
var _view_altura = 70;
//Aqui eu determino em variável o valor da largura para o X
var _view_largura = 40;

//Aqui eu crio a quantidade de sprite baseada na quantidade de vidas do player
repeat(vida)
{
	draw_sprite_ext(spr_player,0,_view_largura,_view_altura,0.3,0.3,0,-1,0.5);
	_view_largura += 40;
}

//Desenhando os escudos do player
//Definindo variaveis de posicionamento
_view_altura = 30;
_view_largura = 40;

//Mostrando na GUI a quantidade de escudos com base na variavel qtd_escudo
//Desenhando o escudo na GUI
repeat(qtd_escudo)
{
	draw_sprite_ext(spr_escudo,2,_view_largura,_view_altura, 0.3,0.3,0,-1,0.5);
	_view_largura += 40;
}