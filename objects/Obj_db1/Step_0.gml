if (global.soul_stop) exit;

if (instance_exists(target)) {
	
    // Distância desejada para parar
    var distancia_minima = 300;

    // Direção e distância até o player
    var dir = point_direction(x, y, target.x, target.y);
    var dist = point_distance(x, y, target.x, target.y);
	
	if (dist > distancia_minima) {
        var dx = lengthdir_x(db1_speed, dir);
        var dy = lengthdir_y(db1_speed, dir);
        move_and_collide(dx, dy, Obj_wall);
    }
	
	var all_dead = true;
	for (var i = 0; i < array_length(orb_list); i++) {
    if (instance_exists(orb_list[i])) {
        all_dead = false;
        break;
		}
	}

	// se todos destruídos → reseta flag para respawn
	if (all_dead) {
	    spawned_orbs = false;
	    orb_list = []; // limpa lista
	}

	// se ainda não spawnou, spawna
	if (!spawned_orbs) {
	    var offset_x = 128;
	    var offset_y = 64;

	    // lado esquerdo
	    for (var i = 0; i < 3; i++) {
	        var yy = y + (i - 1) * offset_y;
	        var orb = instance_create_layer(x - offset_x, yy, "Instances", Obj_db1_orb);
	        orb.parent_boss = id;
	        array_push(orb_list, orb);
	    }

	    // lado direito
	    for (var i = 0; i < 3; i++) {
	        var yy = y + (i - 1) * offset_y;
	        var orb = instance_create_layer(x + offset_x, yy, "Instances", Obj_db1_orb);
	        orb.parent_boss = id;
	        array_push(orb_list, orb);
	    }

	    spawned_orbs = true;
	}
	
}

if (damage_flash > 0) {
    damage_flash--;
    if (damage_flash == 0) {
        image_blend = c_white; // volta ao normal
    }
}

// Destruir se sair da tela
if (y > room_height + sprite_height) {
    instance_destroy();
}