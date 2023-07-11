/// @description Velocidade de disparo
vspeed = -10;
//Alterando o tamanho do disparo
image_xscale = 3;
image_yscale = 3;

//Ajustando tipo do brilho
brilho = spr_tiro_brilho;

//Determinando qual o tipo de disparo
//qualotiro = "nenhum" , "waveloop";

//Variavel que determina metodo do comportamento de disparo
x_pos = obj_player.x;

//waveloop
///@method qtiro(qualotiro)
//Aqui eu determino qual o comportamento de cada disparo
qtiro = function(qualotiro)
	{
		if qualotiro == "waveloop"
		{
			//Ajustando sistema de disparo
			//Disparo a direita
			if x > x_pos
			{
				//Velocidade da waveloop
				hspeed -= 0.7;	
			}
			//Disparo a esquerda
			if x < x_pos
			{
				//Velocidade da waveloop
				hspeed += 0.7;	
			}
		}
		else{}
	}

//Determinando valor de dano
dspr_dano = 1;
