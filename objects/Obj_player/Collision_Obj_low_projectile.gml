if (!invencivel) {
    player_hp -= 5;
    if (player_hp <= 0) {
		
		instance_destroy();
		instance_create_layer(639, 352, "Instances", Obj_game_over);
		
    }
}
with (other) {
    instance_destroy();
}