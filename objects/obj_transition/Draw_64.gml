draw_sprite_ext(sprite_index, 0, window_get_width()/2, window_get_height()/2, image_xscale, image_yscale, 0, c_white, 1);
draw_rectangle_color(0, 0, window_get_width(), y - (sprite_height/2), c_black, c_black, c_black, c_black, false);
draw_rectangle_color(0, y + (sprite_height/2), window_get_width(), window_get_height(), c_black, c_black, c_black, c_black, false);
draw_rectangle_color(0, y - (sprite_height/2), x - (sprite_width/2), y + (sprite_height/2), c_black, c_black, c_black, c_black, false);
draw_rectangle_color(x + (sprite_width/2), y - (sprite_height/2), window_get_width(), y + (sprite_height/2), c_black, c_black, c_black, c_black, false);