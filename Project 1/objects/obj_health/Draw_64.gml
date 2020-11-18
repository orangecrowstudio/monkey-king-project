/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

draw_healthbar(x + 0, y + 0, x + 256, y + 32, global.hp, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF0AFF3F & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0FFFEB>>24) != 0));

cam = view_camera[0];
//var vx = camera_get_view_x(view_camera[0]);
//var vy = camera_get_view_y(view_camera[0]);
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;



x = view_w_half - 420;
y = view_h_half - 360;