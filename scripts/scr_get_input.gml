right_key = keyboard_check(ord('D')); 
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));

dash_key = keyboard_check_pressed(ord('C')) or mouse_check_button_pressed(mb_right);

frozen_key = keyboard_check_pressed(ord('F'));

attack_key = keyboard_check_pressed(ord('R')) or mouse_check_button_pressed(mb_left);

xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
