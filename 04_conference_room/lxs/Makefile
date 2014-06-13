all: \
conference_room_current.lxs

clean:
	-rm -f *~ conference_room_*.lxs

clobber: clean
	-rm -f *.png

conference_room_current.lxs:
	patch conference_room_current -i conference_room_current.patch \
-o conference_room_current.lxs
