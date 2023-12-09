//It moves the flipper precisely, checking for the ball as it goes.

repeat(60)
if global.leftpressed<60 //Arc of 60 degree movement allowed the flipper.
{
if place_meeting(x, y,obj_leftflipper_pb)
{
move_contact_solid(direction,4);
motion_add(45+(global.leftpressed),speed+4);
exit;
}

global.leftpressed+=1
obj_leftflipper_pb.image_angle+=1
}

