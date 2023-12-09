//Only kicks off the ball if approached from the left direction
//It is an invisible object
//But controls the sprite index of the associated bumper
if hspeed<0
{
motion_add(160,25)
image_index=1
alarm[0]=2
}
else
{
move_contact_solid(direction,8)
move_bounce_solid(1);
}

