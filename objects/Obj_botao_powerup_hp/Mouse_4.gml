// Inherit the parent event
event_inherited();

Obj_player.player_maxhp += 10;
Obj_player.player_hp += 10;

global.onda += 1;
Obj_spawner.spawn_interval = 100
Obj_spawner.boss_spawned = false;
instance_destroy();

if instance_exists(Obj_botao_powerup_damage){
	
	instance_destroy(Obj_botao_powerup_damage);
}