// Fonte e cor opcionais
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1); // usa fonte padrão; você pode definir uma fonte customizada

// Desenhar o HP e a barra

draw_sprite_stretched(Hp_bar,0,healthbar_x,heatlhbar_y, (player_hp/player_maxhp) * (healthbar_width * 4), healthbar_height * 4)

draw_set_color(c_black);
draw_text(20, 700, "HP: " + string(player_hp));

draw_set_color(c_white);
draw_text(20, 500, "Almas: " + string(soul_bar));

//draw_set_color(c_white);
//draw_text(20, 600, "Dano: " + string(Obj_projectile.damage));

draw_set_color(c_white);
draw_text(20, 400, "Soul Stops: " + string(soul_stops_usados));

