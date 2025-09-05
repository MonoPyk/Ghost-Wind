if (!instance_exists(parent_boss)) {
    instance_destroy();
    exit;
}

// --------- ESTADOS ---------
switch (state) {
    
    case "spawn_delay":
        spawn_delay -= 1;
        if (spawn_delay <= 0) {
            state = "chasing";
        }
    break;
    
    
    case "chasing":
        if (instance_exists(target)) {
            var dir = point_direction(x, y, target.x, target.y);
            var dist = point_distance(x, y, target.x, target.y);

            // Rotaciona sprite na direção
            image_angle = dir - 90;

            // Movimenta em direção ao player
            x += lengthdir_x(orb_speed, dir);
            y += lengthdir_y(orb_speed, dir);

            // Se chegar perto o suficiente -> trava a direção e muda de estado
            if (dist <= min_dist) {
                locked_dir = dir;
                state = "shooting";
            }
        }
    break;
    
    
    case "shooting":
        // segue em linha reta na direção travada
        x += lengthdir_x(orb_speed, locked_dir);
        y += lengthdir_y(orb_speed, locked_dir);
    break;
}

// Se sair da room, destrói
if (x < -32 || x > room_width + 32 || y < -32 || y > room_height + 32) {
    instance_destroy();
}
