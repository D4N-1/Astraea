audio_bus_fx = audio_bus_create();
audio_emitter_fx = audio_emitter_create();

audio_emitter_bus( audio_emitter_fx, audio_bus_fx )

audio_bus_fx.gain = global.user_settings.volume_fx / 100




//// BG


audio_emitter_bg = audio_emitter_create();
audio_bus_bg = audio_bus_create();

muffle_effect = audio_effect_create(AudioEffectType.LPF2);
muffle_effect.cutoff = 20000; 

audio_bus_bg.effects[0] = muffle_effect;
is_muffle_effect = false;

audio_emitter_bus(audio_emitter_bg, audio_bus_bg)

audio_bus_bg.gain = global.user_settings.volume_bg / 100


//// MASTER

audio_bus_main.gain = global.user_settings.volume_master / 100