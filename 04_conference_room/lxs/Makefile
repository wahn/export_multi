all: \
conference_room_current.lxs \
conference_room_door1.lxs	\
conference_room_door2y.lxs	\
conference_room_shaft.lxs	\
conference_room_xY.lxs

clean:
	-rm -f *~ conference_room_*.lxs

clobber: clean
	-rm -f *.png

conference_room_current.lxs:
	patch conference_room.lxs -i conference_room_current.patch \
-o conference_room_current.lxs

conference_room_door1.lxs:
	patch conference_room.lxs -i conference_room_door1.patch \
-o conference_room_door1.lxs

conference_room_door2y.lxs:
	patch conference_room.lxs -i conference_room_door2y.patch \
-o conference_room_door2y.lxs

conference_room_shaft.lxs:
	patch conference_room.lxs -i conference_room_shaft.patch \
-o conference_room_shaft.lxs

conference_room_xY.lxs:
	patch conference_room.lxs -i conference_room_xY.patch \
-o conference_room_xY.lxs
