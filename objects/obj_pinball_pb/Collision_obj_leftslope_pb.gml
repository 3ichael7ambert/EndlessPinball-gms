//Slow the ball so that it slides down towards the flipper

if speed>4
{
move_contact_solid(direction,8)
move_bounce_solid(1);
speed=speed*.5;
}
else
{
move_contact_solid(direction,8)
move_bounce_solid(1);
speed=speed*.75
}

