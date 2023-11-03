var uni_grain_time = shader_get_uniform(Grain, "grain_time");
var uni_grain_intensity = shader_get_uniform(Grain, "grain_intensity");

var spd = 0.009;
var variations = 5;
var intensity = 0.035;

grain_frame = ceil(spd *current_time) mod variations;

surface_set_target(surf);
shader_set(Grain);
shader_set_uniform_f(uni_grain_time, grain_frame);
shader_set_uniform_f(uni_grain_intensity, intensity);

draw_surface(application_surface, 0, 0);
shader_reset();
surface_reset_target();

draw_surface_ext(surf, 0, 0, 1, 1, 0, c_white, 1);