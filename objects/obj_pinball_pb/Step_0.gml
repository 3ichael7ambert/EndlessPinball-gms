//Limits speed so that it should catch most collisions
//The x variable check allows a fast launch

if x<432
{
if speed>16
{speed=16}
}

//Stops a ball bouncing up and down forever

if direction=90
{direction=direction+(random(6)-3)}

//Drops a ball stuck under an object

if speed=0
{
if place_empty(x, y+1)
{y+=1}
}

//Drops the flipper down if no button is pressed
if keyboard_check(vk_right)=0
{
if global.rightpressed>0
{
//Knocks the ball down under a descending flipper
global.rightpressed-=10
obj_rightflipper_pb.image_angle+=10

if place_free(obj_rightflipper_pb.x, obj_rightflipper_pb.y)
{move_contact_solid(direction,8);
motion_add(270-(global.rightpressed/2),15)}
}}

if keyboard_check(vk_left)=0
{
if global.leftpressed>0
{
//Knocks the ball down under a descending flipper
global.leftpressed-=10
obj_leftflipper_pb.image_angle-=10

if place_free(obj_leftflipper_pb.x, obj_leftflipper_pb.y)
{move_contact_solid(direction,8);
motion_add(270+(global.rightpressed/2),15)}
}}

move_outside_solid(direction,-1) //Unstick a stuck ball



//Infninite outside room
if y=ystart+400 {
x = xstart;
y = ystart;
	instance_deactivate_object(obj_slopelaunch_pb);
}