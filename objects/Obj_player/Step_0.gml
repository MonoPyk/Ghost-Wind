//Lógica da movimentação
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down)or keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

//Rotaciona para que o player sempre esteja mirando para onde o mouse se encontra
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90

//Função de atirar projeteis
if (mouse_check_button(mb_left)) {
    if (projectile1_timer <= 0) {
        instance_create_layer(x, y, "Instances", Obj_projetile);
        projectile1_timer = projectile1_cooldown;
    }
}

// Reduz o timer do tiro
if (projectile1_timer > 0) {
    projectile1_timer -= 1;
}

if mouse_check_button_pressed(mb_right)
{
	instance_create_layer(x, y, "Instances", Obj_projectile2);
	
}

// Sistema de LifeSteal

if (player_hp >= player_maxhp){

	player_hp = player_maxhp;

}

// Contagem regressiva da invencibilidade
if (invencivel) {
    invencivel_timer -= 1;
    if (invencivel_timer <= 0) {
        invencivel = false;
    }
}

if (invencivel) {
    if ((invencivel_timer div 5) mod 2 == 0) {
        draw_self(); // desenha só de tempos em tempos
    }
} else {
    draw_self(); // desenha normalmente
}

// Executando o dash
if (is_dashing) {
    sprite_index = Dash;
	invencivel = true; // <<< ATIVO DURANTE O DASH
	
	audio_play_sound(snd_dasheffect, 0, false)

    move_and_collide(dash_dx, dash_dy, Obj_wall);

    dash_timer -= 1;
    if (dash_timer <= 0) {
        is_dashing = false;
        dash_cooldown_timer = dash_cooldown;
		invencivel = false; // <<< VOLTA AO NORMAL APÓS O DASH
    }
}
else {
    // Movimento normal
    sprite_index = Ship;
    move_and_collide(_xinput * player_speed, _yinput * player_speed, Obj_wall);

    // Inicia dash se não estiver em cooldown
    if (keyboard_check_pressed(vk_shift) && dash_cooldown_timer <= 0) {
        is_dashing = true;
        dash_timer = dash_duration;

        var angle = image_angle + 90;
        dash_dx = lengthdir_x(dash_distance / dash_duration, angle);
        dash_dy = lengthdir_y(dash_distance / dash_duration, angle);
		invencivel = true; // <<< Começa invencível
    }
}

// Contador de cooldown
if (dash_cooldown_timer > 0) {
    dash_cooldown_timer -= 1;
}

move_wrap(true, true, 0);