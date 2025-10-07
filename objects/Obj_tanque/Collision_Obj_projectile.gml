hp -= Obj_projectile.damage;
with (other) instance_destroy();

var player_inst = instance_find(Obj_player, 0);
if (player_inst != noone) {
    player_inst.player_hp += 1; // ou player_inst.player_hp += 1; dependendo do nome
}

if (hp <= 0) {
	
	 // Cria a alma visual
	var alma = instance_create_layer(x, y, "Instances", Obj_alma);
	alma.target = instance_find(Obj_player, 0); // define o alvo da alma
	
	
	
    instance_destroy();
	instance_create_layer(x, y, "Instances", Obj_projectile2_explosion);
	global.score += 100;
}

damage_flash = 5; // piscar por 5 frames
image_blend = c_red; // muda para vermelho
instance_destroy(other);