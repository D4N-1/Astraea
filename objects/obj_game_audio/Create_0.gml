// 1. Crear el efecto de filtro Low-pass (corte de frecuencias altas)
efecto_muffle = audio_effect_create(AudioEffectType.LPF2);

// Frecuencia normal (deja pasar todo el espectro audible, ~20.000 Hz)
efecto_muffle.cutoff = 20000; 

// 2. Conectar el efecto a la cadena de efectos del bus principal (Master Bus)
audio_bus_main.effects[0] = efecto_muffle;

// Control de aturdimiento
drown_effect = false;