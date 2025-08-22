if (other.is_dashing) {
    instance_create_layer(x, y, "Instances", Obj_projectile2_explosion);
	
    // Cria a alma visual
	var alma = instance_create_layer(x, y, "Instances", Obj_alma);
	alma.target = instance_find(Obj_player, 0); // define o alvo da alma

	// Destroi o inimigo
	audio_play_sound(snd_explosao, 0, false);
	instance_destroy();


} else if (!other.invencivel) {
    other.player_hp -= 1;
    other.invencivel = true;
    other.invencivel_timer = other.invencivel_duracao;

    if (other.player_hp <= 0) {
		
		instance_destroy();
        instance_create_layer(639, 352, "Instances", Obj_game_over);
		
    }

    // Cria a alma visual
	var alma = instance_create_layer(x, y, "Instances", Obj_alma);
	alma.target = instance_find(Obj_player, 0); // define o alvo da alma

	// Destroi o inimigo
	instance_destroy();

}
