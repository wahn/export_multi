# usage:
# make clobber

ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

all: \
cafe_scene1.ass \
cafe_scene2.ass

clean:
	-rm -f *~ cafe_scene?.ass 

clobber: clean
	-rm -f *.exr *.log

cafe_scene1.ass: cafe_scene.ass
	patch cafe_scene.ass -i cafe_scene1.patch -o cafe_scene1.ass

cafe_scene2.ass: cafe_scene.ass cafe_scene2.patch
	patch cafe_scene.ass -i cafe_scene2.patch -o cafe_scene2.ass

cafe_scene1.exr: cafe_scene1.ass
	$(KICK) -dp -dw -i cafe_scene1.ass -o cafe_scene1.exr -v 6 \
-r 2000 2000 -log -logfile cafe_scene1.log

cafe_scene2.exr: cafe_scene2.ass
	$(KICK) -dp -dw -i cafe_scene2.ass -o cafe_scene2.exr -v 6 \
-r 2000 2000 -log -logfile cafe_scene2.log
