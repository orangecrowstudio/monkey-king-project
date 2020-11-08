//update destination

if instance_exists(follow) {
	xTo = follow.x //+ 256
	yTo = follow.y
}

//update object position

x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Clamp to not view outside of room

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//update camera view

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

/*
//cam shake
if instance_exists(obj_tire) {
	if obj_tire.spikeHit and spikeCheck{
		view_x = camera_get_view_x(view_camera[0]);
		view_y = camera_get_view_y(view_camera[0]);
		spikeCheck = false
		var range = 3;
		camera_set_view_pos(view_camera[0], view_x + random_range(-range, range), view_y + random_range(-range, range))
	}
}*/