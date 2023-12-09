action_inherited();
///Control
//Boosting
if (boosting)
{
    motion_add(image_angle, 1);
    var rot = boost_rotate;
    instance_create(x, y, objTrail);
}
else
{
    var rot = rotate;
}


if (instance_exists(target))
{
    //Rotating
    var target_angle = point_direction(x, y, target.x, target.y);
    image_angle = angle_approach(image_angle, target_angle, rot);
    image_index = (image_angle/360)*image_number;

    //Firing
    if (shoot_cooldown <= 0)
    if (point_distance(x, y, target.x, target.y) < 300)
    if (abs(target_angle-image_angle) < 45)
    {
        var a;
        a = instance_create(x, y, objPlaneFire);
        a.parent = id;
        a.image_angle = image_angle;
        a = instance_create(x, y, objEnemyBullet);
        a.direction = image_angle;
        a.hspeed += hspeed;
        a.vspeed += vspeed;
        shoot_cooldown = 20;
    }
    shoot_cooldown--;
}



