/// @description Variaveis iniciais do escudo
//Aqui digo pro escudo seguir um alvo caso ele seja um alvo valido
//Em seguida, faço com que ele se destrua caso não seja
//Na criação da instancia feita pelo player seto a variável que dita qual o id do alvo a ser seguido

alvo = noone;

//Aumentando o tamanho do escudo
image_xscale = 1.2;
image_yscale = image_xscale;

//Ajustando transparência
image_alpha = 0.7;

//Tocando audio ao instanciar objeto
audio_play_sound(sfx_shieldUp,1,false)