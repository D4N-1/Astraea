cursor_sprite = spr_cursor_idle;
window_set_cursor(cr_none);


enum enumCursor_state {
	NONE,
	IDLE,
	SELECT
}

global.cursor_sprites = { }

global.cursor_sprites[enumCursor_state.NONE] = cr_none
global.cursor_sprites[enumCursor_state.IDLE] = spr_cursor_idle
global.cursor_sprites[enumCursor_state.SELECT] = spr_cursor_select
	

/// @function set_cursor_sprite(sprite)
/// @param {Enum.enumCursor_state} state El estado del mouse
function set_cursor_sprite(state) {
	cursor_sprite = global.cursor_sprites[state]
	return cursor_sprite
}