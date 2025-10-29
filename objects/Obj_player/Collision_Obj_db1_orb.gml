//Colisão com Obj_db1_Orb

if (!invencivel) {
    player_hp -= other.orb_damage;
    if (player_hp <= 0) {
		
		instance_destroy();
		instance_create_layer(self.x, self.y, "Instances", Obj_game_over);
		
    }
}
with (other) {
    instance_destroy();
}