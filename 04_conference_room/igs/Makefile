all: \
conference_room_current.igs \
conference_room_door1.igs	\
conference_room_door2y.igs	\
conference_room_shaft.igs	\
conference_room_xY.igs

clean:
	-rm -f *~ conference_room_*.igs

clobber: clean
	-rm -f *.png

conference_room_current.igs:
	patch conference_room.igs -i conference_room_current.patch \
-o conference_room_current.igs

conference_room_door1.igs:
	patch conference_room.igs -i conference_room_door1.patch \
-o conference_room_door1.igs

conference_room_door2y.igs:
	patch conference_room.igs -i conference_room_door2y.patch \
-o conference_room_door2y.igs

conference_room_shaft.igs:
	patch conference_room.igs -i conference_room_shaft.patch \
-o conference_room_shaft.igs

conference_room_xY.igs:
	patch conference_room.igs -i conference_room_xY.patch \
-o conference_room_xY.igs
