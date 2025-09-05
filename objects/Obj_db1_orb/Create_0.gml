orb_speed = 8;

// Tempo de espera inicial
spawn_delay = 60; // 1 segundo se room_speed = 60
state = "spawn_delay";

// Distância mínima para mudar do "chasing" para "shooting"
min_dist = 200; // pode ajustar

// Direção travada quando mudar para "shooting"
locked_dir = 0;

orb_damage = 10;

orb_hp = 2;

target = Obj_player;

parent_boss = noone;

sprite_index = db1_orb;
image_angle = 0;
image_xscale = 1;
image_yscale = 1;
image_blend = c_white;

