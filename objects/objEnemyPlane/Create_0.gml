action_inherited();
///Set variables
image_angle = 0;
image_speed = 0;
gravity = 0.05;
max_speed = 6;
friction = 0.025;
rotate = 3;
boost_rotate = 1;
shoot_cooldown = 0;
boosting = true;
image_angle = irandom(180)*2;
alarm[0] = irandom_range(room_speed, room_speed*10);
target = objPlane;



