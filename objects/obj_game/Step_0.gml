
timer += delta_time / 1000000;

var _trigger = false;

if (timer >= 10) {
    timer -= 10;
    _trigger = true;
}

if (_trigger) {

	global.max_rocks += 2

}