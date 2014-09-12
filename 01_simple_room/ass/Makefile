# usage:
# make clobber
# make -j 4

all: \
simple_room_cam1.ass \
simple_room_cam2.ass \
simple_room_cam3.ass \
simple_room_cam4.ass

clean:
	-rm -f *~ simple_room_cam?.ass 

clobber: clean
	-rm -f *.exr

simple_room_cam1.ass: simple_room.ass
	patch simple_room.ass -i simple_room_cam1.patch -o simple_room_cam1.ass

simple_room_cam2.ass: simple_room.ass simple_room_cam2.patch
	patch simple_room.ass -i simple_room_cam2.patch -o simple_room_cam2.ass

simple_room_cam3.ass: simple_room.ass simple_room_cam3.patch
	patch simple_room.ass -i simple_room_cam3.patch -o simple_room_cam3.ass

simple_room_cam4.ass: simple_room.ass simple_room_cam4.patch
	patch simple_room.ass -i simple_room_cam4.patch -o simple_room_cam4.ass
