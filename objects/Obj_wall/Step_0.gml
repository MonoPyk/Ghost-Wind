with (Obj_drone) {
    if (point_distance(x, y, other.x, other.y) <= other.raio) {
        if (variable_instance_exists(id, "HP")) {
            vida -= other.dano;
            if (vida <= 0) {
                instance_destroy();
            }
        }
    }
}

// Destrói a explosão após 1 frame (ou animar, se quiser)
instance_destroy();