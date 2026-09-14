// Prueba: Presiona ESPACIO para alternar entre sonido normal y sonido sordo/asustado
if (keyboard_check_pressed(vk_space)) {
    drown_effect = !drown_effect;
}

// Interpolar suavemente el filtro (lerp) para que la transición sea fluida
if (drown_effect) {
    // Apagar agudos: solo deja pasar frecuencias por debajo de 600 Hz (efecto bajo el agua/shock)
    efecto_muffle.cutoff = lerp(efecto_muffle.cutoff, 600, 0.1);
} else {
    // Restaurar audio nítido
    efecto_muffle.cutoff = lerp(efecto_muffle.cutoff, 20000, 0.1);
}