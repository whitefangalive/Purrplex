height = 300;
width = 300;
depth = 100;

resume = instance_create_layer((window_get_width()/2), (window_get_height()/2)-35, "menuLayer", obj_button);
resume.on_click = unpause;
resume.text = "Resume";
resume.depth = 99;
resume.image_xscale = 2.3;

quit = instance_create_layer((window_get_width()/2), (window_get_height()/2)+35, "menuLayer", obj_button);
quit.on_click = game_end;
quit.text = "Quit";
quit.depth = 99;
quit.image_xscale = 2.3;



