max_speed = random_range(0.2, 2.5);
speed = max_speed
direction = random(360);
image_angle = random(360);

collision_cooldown = 10;


sprites = [
	spr_rock_big_01,
	spr_rock_big_02,
	spr_rock_big_03
]

if ( !sprite_index ) sprite_index = sprites[ irandom_range(0, 2) ]
