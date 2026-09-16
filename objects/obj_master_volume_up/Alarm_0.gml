// Inherit the parent event
event_inherited();


if ( global.user_settings.volume_master < 100 ) global.user_settings.volume_master += 1

audio_master_gain( global.user_settings.volume_master/100 )