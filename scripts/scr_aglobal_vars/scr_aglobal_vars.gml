global.user_settings = load_user_settings()
global.user_stats = get_user_stats()




//// CURSOR

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
	