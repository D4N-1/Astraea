// Inherit the parent event
event_inherited();

show_debug_message("signal")

if ( obj_global_settings.master_volume <= 100 ) {
	
} else {
	
	show_debug_message(obj_global_settings.master_volume)
	
	obj_global_settings.master_volume -= 1
}