instance_destroy(other);
audio_play_sound_on(global.audio_emitter_fx, so_rock_destroy, false, 0, 1, 0, random_range(0.5, 1.5) );


effect_create_depth(depth,  ef_explosion, x, y, 1, c_white);

direction = random(360);


if ( array_contains(sprites, sprite_index) ) {
	
	sprite_index = spr_rock_small;
	
	instance_copy(true);
	global.user_stats.points += 10
	
} else if ( instance_number(obj_big_rock) < global.max_rocks ) {
	
	sprite_index = sprites[ irandom_range(0, 2) ];
	x = -100;
	global.user_stats.points += 5;
	
} else instance_destroy();