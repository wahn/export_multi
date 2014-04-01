all: simple_room_cam4.lxs

clean:
	-rm -f *~ simple_room_cam?.lxs 

simple_room_cam4.lxs: simple_room.lxs simple_room_cam4.patch
	patch simple_room.lxs -i simple_room_cam4.patch -o simple_room_cam4.lxs
