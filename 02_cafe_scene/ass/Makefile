# usage:
# make clobber

ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

all: \
cafe_scene1.exr \
cafe_scene2.exr

clean:
	-rm -f *~

clobber: clean
	-rm -f *.exr *.log

cafe_scene1.exr: cafe_scene1.ass
	$(KICK) -dp -dw -i cafe_scene1.ass -o cafe_scene1.exr -v 6 -e -4 \
-logfile cafe_scene1.log

cafe_scene2.exr: cafe_scene2.ass
	$(KICK) -dp -dw -i cafe_scene2.ass -o cafe_scene2.exr -v 6 \
-logfile cafe_scene2.log
