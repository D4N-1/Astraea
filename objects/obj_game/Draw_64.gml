// Inherit the parent event
event_inherited();

draw_text(x, y, global.user_stats.points)
draw_text(x, y + 50, timer)
draw_text(x, y + 125, global.max_rocks)


if ( global.user_stats.new_record ) {
	
	draw_set_font(fnt_text)
	draw_text(450, 450, "New Record!")
	draw_set_font(fnt_button)
	draw_text(500, 500, global.user_stats.max_points )
}