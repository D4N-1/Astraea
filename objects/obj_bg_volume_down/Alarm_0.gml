// Inherit the parent event
event_inherited();

if ( global.user_settings.volume_bg > 0 ) global.user_settings.volume_bg -= 1

global.audio_bus_bg.gain = global.user_settings.volume_bg / 100