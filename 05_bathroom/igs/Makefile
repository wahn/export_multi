# usage:
# make clobber
# make

clean:
	-rm -f *~

clobber: clean
	-rm -f bathroom_*.igs

all: \
bathroom_mir.igs \
bathroom_shwin.igs \
bathroom_sink.igs \
bathroom_stall.igs \
bathroom_van.igs

# bathroom_mir

bathroom_mir.igs: bathroom.igs
	patch bathroom.igs -i bathroom_mir.patch -o bathroom_mir.igs

# bathroom_shwin

bathroom_shwin.igs: bathroom.igs
	patch bathroom.igs -i bathroom_shwin.patch -o bathroom_shwin.igs

# bathroom_sink

bathroom_sink.igs: bathroom.igs
	patch bathroom.igs -i bathroom_sink.patch -o bathroom_sink.igs

# bathroom_stall

bathroom_stall.igs: bathroom.igs
	patch bathroom.igs -i bathroom_stall.patch -o bathroom_stall.igs

# bathroom_van

bathroom_van.igs: bathroom.igs
	patch bathroom.igs -i bathroom_van.patch -o bathroom_van.igs
