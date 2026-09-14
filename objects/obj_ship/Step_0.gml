move_wrap(true, true, 10)


if ( keyboard_check(vk_up) ) motion_add(image_angle, 0.1);

if ( keyboard_check(vk_left) ) image_angle += 0.6

if ( keyboard_check(vk_right) ) image_angle -= 0.6

if ( mouse_check_button_pressed(mb_middle) ) instance_create_layer(x, y, "Instances", obj_bullet)