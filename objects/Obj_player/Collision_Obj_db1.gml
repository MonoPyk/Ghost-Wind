if (!invencivel) {
    player_hp -= other.db1_damage;
    invencivel = true;
    invencivel_timer = invencivel_duracao;

    if (player_hp <= 0) {
		instance_destroy();
        instance_create_layer(639, 352, "Instances", Obj_game_over);
		
    }
}