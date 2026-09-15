// Inherit the parent event
event_inherited();

if ( global.volume_bg > 0 ) global.volume_bg -= 1

global.audio_bus_bg.gain = global.volume_bg / 100