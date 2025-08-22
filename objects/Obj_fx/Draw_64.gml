if global.soul_stop == true{
	shader_set(shd_negative);
	draw_surface(application_surface, 0, 0)
}
else{
	shader_reset();
}