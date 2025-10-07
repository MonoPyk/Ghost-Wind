// Inherit the parent event
event_inherited();

//Aumenta 
Obj_projectile.damage += 1;

global.onda += 1;
Obj_spawner.spawn_interval = 100
Obj_spawner.boss_spawned = false;
instance_destroy();

if instance_exists(Obj_botao_powerup_hp){
	
	instance_destroy(Obj_botao_powerup_hp);
}