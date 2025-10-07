boss_hp -= Obj_projectile.damage;
with (other) instance_destroy();

var player_inst = instance_find(Obj_player, 0);
if (player_inst != noone) {
    player_inst.player_hp += 1; // ou player_inst.player_hp += 1; dependendo do nome
}

if (boss_hp <= 0) {
    // Cria a alma visual
	var alma = instance_create_layer(x, y, "Instances", Obj_alma);
	alma.target = instance_find(Obj_player, 0); // define o alvo da alma

	// Destroi o inimigo
	instance_destroy();
	
	// Efeito de câmera
	var jogo = instance_find(Obj_jogo, 0);
	if (jogo != noone) {
	    jogo.shake_time = 1000;
	    jogo.shake_strength = 8;
}
	
	global.score += 10000;
	
	//Obj_spawner.spawn_interval = 100
	global.multiplicador += 1
	instance_create_layer(639, 352, "Instances", Obj_game_win);
	

}

// Ativa o efeito de flash
damage_flash = 5; 
image_blend = c_yellow; // muda para amarelo
instance_destroy(other);
