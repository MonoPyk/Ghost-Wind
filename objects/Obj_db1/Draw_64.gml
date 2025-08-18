// Fonte e cor opcionais
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1); // usa fonte padrão; você pode definir uma fonte customizada

// Desenhar o HP e a barra

draw_sprite_stretched(Boss_bar,0,healthbar_x,heatlhbar_y, (boss_hp/max_hp) * (healthbar_width * 6), healthbar_height * 4)

draw_set_color(c_black);
draw_text(20, 700, "HP: " + string(boss_hp));