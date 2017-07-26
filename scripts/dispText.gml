///dispText(string)
str = argument[0];

draw_text(100, 100, str);
draw_set_alpha(1);
while(draw_get_alpha() > 0) {
    draw_set_alpha(draw_get_alpha() - .01);
}

