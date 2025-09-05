spawn_interval = 10;
spawn_timer = spawn_interval;

min_spawn_interval = 5;
difficulty_timer = 0;
difficulty_interval = 100;

// Lista de inimigos
enemy_list = [Obj_drone, Obj_atirador, Obj_tanque];
enemy_weights = [90, 9, 1]; // Drones 90%, Atiradores 10% no início

boss_spawned = false;
