
if ( global.max_points < global.points ) {
	
	global.max_points = global.points
	global.new_record = true
	
}

global.points = 0

set_cursor_sprite(enumCursor_state.IDLE)
room_goto(rm_menu)