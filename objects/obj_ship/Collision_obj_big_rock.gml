effect_create_above(ef_explosion, x, y, 1, c_yellow);

instance_destroy();

obj_game.alarm[0] = 120;

audio_play_sound(so_lose, 0, false);