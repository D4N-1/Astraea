// Inherit the parent event
event_inherited();

draw_text(x, y, global.points)


if ( global.new_record ) {
	
	draw_set_font(fnt_text)
	draw_text(450, 450, "New Record!")
	draw_set_font(fnt_button)
	draw_text(500, 500, global.max_points )
}