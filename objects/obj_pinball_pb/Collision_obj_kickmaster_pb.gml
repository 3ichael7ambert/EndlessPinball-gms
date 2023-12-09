//Energetic bounce for mushrooms etc 

move_contact_solid(direction,8);
move_bounce_solid(1);
speed=speed*1.5;

//Sets a minumum speed so there is a real kick

if speed<8
{speed=8}

