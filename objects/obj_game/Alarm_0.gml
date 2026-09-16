if ( global.user_stats.new_record ) global.user_stats.new_record = false;

global.is_muffle_effect = false;
set_cursor_sprite(enumCursor_state.IDLE)

save_user_stats(global.user_stats)

room_goto(rm_menu)