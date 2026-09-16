// Inherit the parent event
event_inherited();

if ( global.user_settings.volume_fx < 100 ) global.user_settings.volume_fx += 1

global.audio_bus_fx.gain = global.user_settings.volume_fx / 100