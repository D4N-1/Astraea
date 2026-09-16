

/// @function set_cursor_sprite(sprite)
/// @param {Enum.enumCursor_state} state El estado del mouse
function set_cursor_sprite(state) {
	cursor_sprite = global.cursor_sprites[state]
	return cursor_sprite
}