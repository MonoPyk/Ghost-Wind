hp -= 1;
with (other) instance_destroy();

var player_inst = instance_find(Obj_player, 0);
if (player_inst != noone) {
    player_inst.player_hp += 1; // ou player_inst.player_hp += 1; dependendo do nome
}

if (hp <= 0) {
    // Cria a alma visual
	var alma = instance_create_layer(x, y, "Instances", Obj_alma);
	alma.target = instance_find(Obj_player, 0); // define o alvo da alma

	// Destroi o inimigo
	instance_destroy();
	
	instance_create_layer(x, y, "Instances", Obj_enemy_explosion);
	
	global.score += 200;
}