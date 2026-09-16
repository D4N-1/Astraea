// Inherit the parent event
event_inherited();

if ( global.user_settings.volume_fx > 0 ) global.user_settings.volume_fx -= 1

global.audio_bus_fx.gain = global.user_settings.volume_fx / 100
