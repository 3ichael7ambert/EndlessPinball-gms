//It moves the flipper precisely, checking for the ball as it goes.

repeat(60)
if global.rightpressed<60 //Arc of 60 degree movement allowed the flipper.
{
if place_meeting(x, y,obj_rightflipper_pb)
{
move_contact_solid(direction,4);
motion_add(45+(global.rightpressed),speed+4);
exit;
}

global.rightpressed+=1
obj_rightflipper_pb.image_angle-=1
}

