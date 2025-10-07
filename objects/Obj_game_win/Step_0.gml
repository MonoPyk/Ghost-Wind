//Fade in da imagem
if image_alpha < 1{

	image_alpha += .01;

}

if image_alpha == 1{
	
	// Para o spawn de inimigos
	//with (Obj_spawner) {
	    //instance_destroy();
	//}
	
	if Obj_jogo.shake_time == 0{
		
		//Reseta o jogo caso apertar qualquer botão
		if keyboard_check_pressed(vk_anykey){
			
			instance_create_layer(900, 352, "Instances", Obj_botao_powerup_damage);
			instance_create_layer(400, 352, "Instances", Obj_botao_powerup_hp);
			
			instance_destroy();
		}
	}
	

}