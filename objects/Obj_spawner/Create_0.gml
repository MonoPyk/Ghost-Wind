//Intervalo de spawn (Por frames)
spawn_interval = 100;
spawn_timer = spawn_interval;

min_spawn_interval = 5;
difficulty_timer = 0;
difficulty_interval = 100;

// Lista de inimigos
enemy_list = [Obj_drone, Obj_atirador, Obj_tanque];
enemy_weights = [90, 9, 1]; // Lista de porcentagem do spawn de inimigos por peso

boss_spawned = false;
