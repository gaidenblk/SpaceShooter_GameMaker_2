/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Criando o aspecto de escurecimento da tela
if !mudou_room transparencia += mudanca_transparencia;

// Sistema de verificação de mudança de room
var prox_room = room_get_name(room)


if room_atual != prox_room {
	mudou_room = true
	room_atual = prox_room
}

if mudou_room {
	mudanca_transparencia *= -1
	show_debug_message(mudou_room)
	show_debug_message(room_atual)
	mudou_room = false
}

//Depois que a tela ficar totalmente escura realiza a transcição de room
if transparencia >= 1 {
	room_goto(destino)	
}

// Se destruindo quando tudo deu certo
if transparencia <= 0 instance_destroy()
