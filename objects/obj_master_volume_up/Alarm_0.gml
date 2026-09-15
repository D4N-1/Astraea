// Inherit the parent event
event_inherited();


if ( global.volume_master < 100 ) global.volume_master += 1

audio_master_gain(global.volume_master/100)