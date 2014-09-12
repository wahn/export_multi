# usage:
# make clobber
# make -j 4

ARNOLD = /mill3d/server/apps/ARNOLD/linux-x86-64/Arnold-4.2.1.0
KICK = $(ARNOLD)/bin/kick

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

simple_room_cam1.exr: simple_room_cam1.ass
	$(KICK) -dp -dw -i simple_room_cam1.ass -o simple_room_cam1.exr \
-r 2000 2000 -v 6

simple_room_cam2.exr: simple_room_cam2.ass
	$(KICK) -dp -dw -i simple_room_cam2.ass -o simple_room_cam2.exr \
-r 2000 2000 -v 6

simple_room_cam3.exr: simple_room_cam3.ass
	$(KICK) -dp -dw -i simple_room_cam3.ass -o simple_room_cam3.exr \
-r 2000 2000 -v 6

simple_room_cam4.exr: simple_room_cam4.ass
	$(KICK) -dp -dw -i simple_room_cam4.ass -o simple_room_cam4.exr \
-r 2000 2000 -v 6
