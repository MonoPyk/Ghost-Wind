/// STEP EVENT

var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (mouse_check_button_pressed(mb_left)) {
    if (mx > slider_x && mx < slider_x + slider_width &&
        my > slider_y - 10 && my < slider_y + slider_height + 10) {
        dragging = true;
    }
}

if (mouse_check_button_released(mb_left)) {
    dragging = false;
}

if (dragging) {
    var new_volume = (mx - slider_x) / slider_width;
    new_volume = clamp(new_volume, 0, 1);
    volume = new_volume;
    global_volume = volume;
    audio_master_gain(volume);
}
