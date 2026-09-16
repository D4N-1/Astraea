move_wrap(true, true, 100)

image_angle += 0.1

if ( speed > 0.5 ) speed -= 0.05

if ( collision < 25 ) {
	
	if ( !resetting_in ) {
		
		collision = 25
		resetting_in = reset_time;
		
	} else {
		
		resetting_in -= 1/60
		
	}
}