if (!invencivel) {
    player_hp -= other.dano;
    invencivel = true;
    invencivel_timer = invencivel_duracao;

    if (player_hp <= 0) {
		instance_destroy();
        instance_create_layer(self.x, self.y, "Instances", Obj_game_over);
    }
}