/// @description Change boosting pattern
if (boosting)
{
    if (random(100) < 20)
    {
        boosting = false;
    }
    else
    {
        boosting = true;
    }
}
else
{
    boosting = true;
}
if (boosting)
{
    alarm[0] = irandom_range(room_speed, room_speed*10);
}
else
{
    alarm[0] = irandom_range(room_speed/2, room_speed*2);
}


