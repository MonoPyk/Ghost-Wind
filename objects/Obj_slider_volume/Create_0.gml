/// CREATE EVENT

slider_x = 540;
slider_y = 200;
slider_width = 300;
slider_height = 20;
knob_radius = 10;

// Se já existir um valor salvo, carrega do arquivo
if (file_exists("config.ini")) {
    ini_open("config.ini");
    global_volume = ini_read_real("AUDIO", "volume", 1); // valor padrão = 1
    ini_close();
} else {
    global_volume = 1;
}

volume = global_volume;
audio_master_gain(volume);

dragging = false;
