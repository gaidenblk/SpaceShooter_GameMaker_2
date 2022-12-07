/// @description Alterando tamanho do disparo suavemente
//Usando a função Lerp
image_xscale = lerp(image_xscale,1,0.3);
image_yscale = lerp(image_yscale,1,0.3);
//Ajustando sistema de disparo
//Disparo a direita
if x > x_pos
{
hspeed -= 0.5;	
}
//Disparo a esquerda
if x < x_pos
{
hspeed += 0.5;	
}