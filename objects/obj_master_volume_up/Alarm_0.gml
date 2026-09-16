// Inherit the parent event
event_inherited();


if ( global.user_settings.volume_master < 100 ) global.user_settings.volume_master += 1

audio_bus_main.gain = global.user_settings.volume_master/100