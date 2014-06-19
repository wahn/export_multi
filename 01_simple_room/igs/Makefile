# usage:
# make clobber
# make -j 4

all: \
simple_room_cam1.igs \
simple_room_cam2.igs \
simple_room_cam3.igs \
simple_room_cam4.igs

clean:
	-rm -f *~ simple_room_cam?.igs

clobber: clean

simple_room_cam1.igs: simple_room.igs
	patch simple_room.igs -i simple_room_cam1.patch -o simple_room_cam1.igs

simple_room_cam2.igs: simple_room.igs simple_room_cam2.patch
	patch simple_room.igs -i simple_room_cam2.patch -o simple_room_cam2.igs

simple_room_cam3.igs: simple_room.igs simple_room_cam3.patch
	patch simple_room.igs -i simple_room_cam3.patch -o simple_room_cam3.igs

simple_room_cam4.igs: simple_room.igs simple_room_cam4.patch
	patch simple_room.igs -i simple_room_cam4.patch -o simple_room_cam4.igs
