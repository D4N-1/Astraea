// 1. Verificar si el ratón está sobre ESTA instancia concreta
var _hover = position_meeting(mouse_x, mouse_y, id);

// 2. Solo activar la alarma si está encima Y presionado
if (_hover && mouse_check_button(mb_left)) {
    if (alarm[0] <= 0) {
        alarm[0] = 15;
    }
}