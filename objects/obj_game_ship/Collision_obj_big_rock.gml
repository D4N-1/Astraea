effect_create_depth(depth, ef_explosion, x, y, 1, c_white);

instance_destroy();

obj_game.alarm[1] = 2;
obj_game.alarm[0] = 240;

global.is_muffle_effect = true;
audio_play_sound_on( global.audio_emitter_fx, so_explosion, 0, false);
