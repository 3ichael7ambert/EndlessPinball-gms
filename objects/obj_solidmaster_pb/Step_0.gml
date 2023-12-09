/// @description Insert description here
// You can write your code in this editor


var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);


if x<_vx+500 { instance_deactivate_object(self); }
if x>_vx+_vw-500 { instance_deactivate_object(self); }
if y<_vy+500 { instance_deactivate_object(self); }
if y>_vy+_vh-500 { instance_deactivate_object(self); }










