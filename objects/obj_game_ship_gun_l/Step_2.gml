// Verificar que la nave sigue existiendo (por si la destruyen)
if (!instance_exists(owner)) {
    instance_destroy();
    exit;
}

// Calcular el ángulo real en el mundo sumando la rotación de la nave
var _actual_angle = owner.image_angle + offset_angle;

// Posicionar el arma en relación con la nave
x = owner.x + lengthdir_x(offset_dist, _actual_angle);
y = owner.y + lengthdir_y(offset_dist, _actual_angle);

// Sincronizar la orientación del sprite con la nave
image_angle = owner.image_angle;