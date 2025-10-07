// Cria a explosão ao colidir com o projétil primário
instance_create_layer(x, y, "Instances", Obj_projectile2_explosion);

// Destrói ambos os projéteis
instance_destroy();
with (other) {
    instance_destroy();
}