/// @Desc

draw_sprite_ext(sprite_index, image_index, x, y + levit_offset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);


draw_set_font(fnt_jogo);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, botao_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
