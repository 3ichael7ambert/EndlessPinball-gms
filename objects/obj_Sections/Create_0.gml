/// @description Insert description here
// You can write your code in this editor
randomize();

pattern=irandom_range(1,1);

if pattern=1 {
	var rand=irandom_range(3,10);
	var xx = irandom_range(x,room_width);
	var yy = irandom_range(0,160);
	
	for (var i=0; i<rand;i++) {
		if place_free(xx,y-yy) {
			instance_create(x+xx,y-yy,obj_mushroom_pb);
		}
	}
}














