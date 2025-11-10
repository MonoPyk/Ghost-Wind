// --- Desenha o fundo (botão/base visual do ranking) ---
draw_self();

// --- Define aparência do texto ---
draw_set_font(-1);
draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// --- Título ---
draw_text(score_x, self.y - 200, texto_titulo);

// --- Top 5 ---
draw_set_halign(fa_left);
draw_text(score_x - 100, self.y - 150, texto_top5);

// --- Score do jogador ---
draw_set_halign(fa_center);
draw_text(score_x, self.y + 50, texto_player);

// --- Posição do jogador ---
draw_text(score_x, self.y + 25, texto_posicao);
