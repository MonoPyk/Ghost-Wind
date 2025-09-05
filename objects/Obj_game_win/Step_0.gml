//Fade in da imagem
if image_alpha < 1{

	image_alpha += .01;

}

if image_alpha == 1{
	
	// Para o spawn de inimigos
	with (Obj_spawner) {
	    instance_destroy();
	}

	//Reseta o jogo caso apertar qualquer botão
	if keyboard_check_pressed(vk_anykey){
		room_goto(rm_menu);
	}

}