/// DRAW EVENT

draw_set_color(c_dkgrey);
draw_rectangle(slider_x, slider_y, slider_x + slider_width, slider_y + slider_height, false);

// Barra de preenchimento
draw_set_color(c_grey);
draw_rectangle(slider_x, slider_y, slider_x + slider_width * volume, slider_y + slider_height, false);

// Botão (knob)
draw_set_color(c_teal);
draw_circle(slider_x + slider_width * volume, slider_y + slider_height / 2, knob_radius, false);

// Texto com porcentagem
var volume_percent = round(volume * 100);
draw_set_color(c_aqua);
draw_text(slider_x, slider_y - 40, "Volume: " + string(volume_percent) + "%");
