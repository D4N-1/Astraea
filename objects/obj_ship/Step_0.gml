move_wrap(true, true, 10)

show_debug_message( keyboard_key )

if ( keyboard_check(vk_up) || keyboard_check( ord("W")) ) motion_add(image_angle, 0.1);

if ( keyboard_check(vk_left) || keyboard_check( ord("A")) ) image_angle += 1.5

if ( keyboard_check(vk_right) || keyboard_check( ord("D")) ) image_angle -= 1.5

if ( mouse_check_button_pressed(mb_left) || keyboard_check_pressed( vk_space ) ) {
	
	instance_create_layer(x, y, "Instances", obj_bullet)
	
	audio_play_sound_on( global.audio_emitter_fx, so_shoot, false, 0, 1, 0, random_range(0.5, 1.5) );
}