# usage:
# make clobber
# make 

ARNOLD = /mill3d/server/apps/ARNOLD/linux-x86-64/Arnold-4.2.0.4
KICK = $(ARNOLD)/bin/kick

all: bathroom_mir.exr

clean:
	-rm -f *~ bathroom_*.ass 

clobber: clean
	-rm -f *.exr

# bathroom_mir

bathroom_mir.ass: bathroom_mir.patch
	patch bathroom.ass -i bathroom_mir.patch -o bathroom_mir.ass

bathroom_mir.exr: bathroom_mir.ass
	$(KICK) -dp -dw -i bathroom_mir.ass -o bathroom_mir.exr -e -6 -v 6

# bathroom_shwin.exr
# bathroom_sink.exr
# bathroom_stall.exr
# bathroom_van.exr
