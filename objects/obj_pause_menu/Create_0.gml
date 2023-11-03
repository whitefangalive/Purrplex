height = 400;
width = 500;
depth = 100;

resume = instance_create_layer((window_get_width()/2), (window_get_height()/2)-75, "menuLayer", obj_button);
resume.on_click = unpause;
resume.text = "Contiune";
resume.depth = 99;
resume.image_xscale = 4.3;

MMenu = instance_create_layer((window_get_width()/2), (window_get_height()/2), "menuLayer", obj_button);
MMenu.on_click = gotoMainMenu;
MMenu.text = "Main Menu";
MMenu.depth = 99;
MMenu.image_xscale = 4.3;

quit = instance_create_layer((window_get_width()/2), (window_get_height()/2)+75, "menuLayer", obj_button);
quit.on_click = game_end;
quit.text = "Quit";
quit.depth = 99;
quit.image_xscale = 4.3;



