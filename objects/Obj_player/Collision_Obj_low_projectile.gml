if (!invencivel) {
    player_hp -= other.dano;
    if (player_hp <= 0) {
		
		instance_destroy();
		instance_create_layer(self.x, self.y, "Instances", Obj_game_over);
		
    }
}
with (other) {
    instance_destroy();
}