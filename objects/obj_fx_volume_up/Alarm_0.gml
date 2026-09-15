// Inherit the parent event
event_inherited();

if ( global.volume_fx < 100 ) global.volume_fx += 1

global.audio_bus_fx.gain = global.volume_fx / 100