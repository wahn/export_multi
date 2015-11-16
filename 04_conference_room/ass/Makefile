# usage:
# make clobber
# make -j 5

ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

all: \
conference_room_arnold_current.exr \
conference_room_arnold_door1.exr \
conference_room_arnold_door2y.exr \
conference_room_arnold_shaft.exr \
conference_room_arnold_xY.exr

clean:
	-rm -f *~

clobber: clean
	-rm -f *.exr

conference_room_arnold_current.exr: conference_room.ass
	$(KICK) -dp -dw -i conference_room.ass -o conference_room_arnold_current.exr \
-c CAcurrent_cam -v 6

conference_room_arnold_door1.exr: conference_room.ass
	$(KICK) -dp -dw -i conference_room.ass -o conference_room_arnold_door1.exr \
-c CAdoor1_cam -v 6

conference_room_arnold_door2y.exr: conference_room.ass
	$(KICK) -dp -dw -i conference_room.ass -o conference_room_arnold_door2y.exr \
-c CAdoor2y_cam -v 6

conference_room_arnold_shaft.exr: conference_room.ass
	$(KICK) -dp -dw -i conference_room.ass -o conference_room_arnold_shaft.exr \
-c CAshaft_cam -v 6

conference_room_arnold_xY.exr: conference_room.ass
	$(KICK) -dp -dw -i conference_room.ass -o conference_room_arnold_xY.exr \
-c CAxY_cam -v 6
