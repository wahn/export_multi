OBJECTS = bathroom.rad
# sinkfauc.rad sinkspig.rad bathfauc.rad toilet.rad \
flushand.rad medcab.rad vanity.rad basin.cal sinkspig.rad vanfixt.rad \
lamp_holder.rad door.rad towel_rack.rad towel_rack.rad.bracket.rad

all: orig.oct

clean:
	-rm -f *~ lib/*~ *.amb *.oct *.sh *.tiff *.hdr

clobber: clean
	-rm -f *.png

orig.oct: $(OBJECTS)
	oconv materials.rad bathroom.rad > orig.oct

orig_night.oct: \
materials.rad \
orig.oct
	oconv -f -i orig.oct \
skylight_night.rad window_night.rad lights_on.rad > orig_night.oct
