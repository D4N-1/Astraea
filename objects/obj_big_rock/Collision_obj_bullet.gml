instance_destroy(other);
audio_play_sound(so_rock_destroy, 0, false, 1, 0, random_range(0.5, 1.5) );


effect_create_depth(depth,  ef_explosion, x, y, 1, c_white);

direction = random(360);


if ( sprite_index == spr_rock_big ) {
	
	sprite_index = spr_rock_small;
	instance_copy(true);
	obj_game.points += 10
	
} else if ( instance_number(obj_big_rock) < 12 ) {
	
	sprite_index = spr_rock_big;
	x = -100;
	obj_game.points += 5;
	
} else instance_destroy();