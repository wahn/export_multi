OBJECTS = bathroom.rad lib/sinkfauc.rad lib/sinkspig.rad lib/bathfauc.rad \
lib/toilet.rad lib/flushand.rad lib/medcab.rad lib/vanity.rad lib/basin.cal \
lib/sinkspig.rad lib/vanfixt.rad lib/lamp_holder.rad lib/door.rad \
lib/towel_rack.rad lib/towel_rack_bracket.rad

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
