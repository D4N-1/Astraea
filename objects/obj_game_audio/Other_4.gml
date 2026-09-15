var _index = irandom( array_length( so_bg_pool ) - 1 );

so_bg = so_bg_pool[_index]

global.is_muffle_effect = false;

audio_play_sound_on(global.audio_emitter_bg, so_bg, false, 0);
