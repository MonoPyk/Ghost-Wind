// Se o boss não spawnou, spawn normal acontece
if (!boss_spawned) {

    spawn_timer -= 1;

    if (spawn_timer <= 0) {
        var left = 0;
        var right = room_width;
        var spawn_x = random_range(left, right);
        var spawn_y = y;

        // Escolha aleatória com peso
        var total = 0;
        for (var i = 0; i < array_length(enemy_weights); i++) {
            total += enemy_weights[i];
        }

        var roll = irandom_range(0, total - 1);
        var sum = 0;
        var enemy_type = enemy_list[0];

        for (var i = 0; i < array_length(enemy_weights); i++) {
            sum += enemy_weights[i];
            if (roll < sum) {
                enemy_type = enemy_list[i];
                break;
            }
        }

        instance_create_layer(spawn_x, spawn_y, "Instances", enemy_type);

        spawn_timer = spawn_interval;
    }

    difficulty_timer += 1;
    if (difficulty_timer >= difficulty_interval) {
        difficulty_timer = 0;

        if (enemy_weights[1] < 60) {
            enemy_weights[0] -= 5;
            enemy_weights[1] += 5;
        }

        if (spawn_interval > min_spawn_interval) {
            spawn_interval -= 1;
        }
    }
}

// Spawn do boss
if (spawn_interval == 10 && !boss_spawned) {
    var boss_x = random_range(0, room_width);
    var boss_y = y;

    instance_create_layer(boss_x, boss_y, "Instances", Obj_db1);

    boss_spawned = true;
}
