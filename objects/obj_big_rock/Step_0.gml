move_wrap(true, true, 100)
image_angle += 0.1

if ( collision_cooldown > 0 ) collision_cooldown--


if ( collision_cooldown == 0 ) {
	
	var _other = instance_place(x, y, obj_big_rock)
	
	if ( _other != noone ) {
		
		var _push_dir = point_direction(_other.x, _other.y, x, y)
		direction = _push_dir
		
		speed = min(speed + (max_speed * 0.2), max_speed * 1.5)
		
		x += lengthdir_x(1, _push_dir)
		y += lengthdir_y(1, _push_dir)
		
		collision_cooldown = 10
		
	}
	
}


if ( speed > max_speed ) speed = max(max_speed, speed - 0.05)
