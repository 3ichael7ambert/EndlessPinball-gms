action_inherited();
///Control
var kUp = keyboard_check(k_up);
var kLeft = keyboard_check(k_left);
var kRight = keyboard_check(k_right);
var kShoot = keyboard_check(k_shoot);

//Boosting
if (kUp)
{
    motion_add(image_angle, 1);
    var rot = boost_rotate;
    instance_create(x, y, objTrail);
}
else
{
    var rot = rotate;
}

//Rotating
if (kLeft || kRight)
{
    if (kLeft)
    {
        image_angle += rot;
        if (image_angle > 360)
        {
            image_angle -= 360;
        }
    }
    if (kRight)
    {
        image_angle -= rot;
        if (image_angle < 0)
        {
            image_angle += 360;
        }
    }
    image_index = (image_angle/360)*image_number;
}

//Firing
if (shoot_cooldown <= 0)
{
    if (kShoot)
    {
        var a;
        a = instance_create(x, y, objPlaneFire);
        a.parent = id;
        a.image_angle = image_angle;
        a = instance_create(x, y, objBullet);
        a.direction = image_angle;
        a.hspeed += hspeed;
        a.vspeed += vspeed;
        shoot_cooldown = 10;
    }
}
shoot_cooldown--;



