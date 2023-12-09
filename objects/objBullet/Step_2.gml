/// @description Decay & destroy
decay--;
if (decay <= 0)
{
    instance_destroy();
}
image_angle = direction;
speed = max(min_speed, speed);


