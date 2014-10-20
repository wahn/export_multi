# usage:
# make clobber
# make

all: \
bathroom_mir.lxs \
bathroom_shwin.lxs \
bathroom_sink.lxs \
bathroom_stall.lxs \
bathroom_van.lxs

clean:
	-rm -f *~ bathroom_*.lxs

clobber: clean
	-rm -f luxout.png

# bathroom_mir

bathroom_mir.lxs: bathroom_mir.patch
	patch bathroom.lxs -i bathroom_mir.patch -o bathroom_mir.lxs
	@echo "render (on Linux) with: luxrender bathroom_mir.lxs"
	@echo "or"
	@echo "(on Mac OS X) with: open bathroom_mir.lxs"
	@echo "open INI file from there (via 'File -> Load Panel Settings...')"

# bathroom_shwin

bathroom_shwin.lxs: bathroom_shwin.patch
	patch bathroom.lxs -i bathroom_shwin.patch -o bathroom_shwin.lxs
	@echo "render (on Linux) with: luxrender bathroom_shwin.lxs"
	@echo "or"
	@echo "(on Mac OS X) with: open bathroom_shwin.lxs"
	@echo "open INI file from there (via 'File -> Load Panel Settings...')"

# bathroom_sink

bathroom_sink.lxs: bathroom_sink.patch
	patch bathroom.lxs -i bathroom_sink.patch -o bathroom_sink.lxs
	@echo "render (on Linux) with: luxrender bathroom_sink.lxs"
	@echo "or"
	@echo "(on Mac OS X) with: open bathroom_sink.lxs"
	@echo "open INI file from there (via 'File -> Load Panel Settings...')"

# bathroom_stall

bathroom_stall.lxs: bathroom_stall.patch
	patch bathroom.lxs -i bathroom_stall.patch -o bathroom_stall.lxs
	@echo "render (on Linux) with: luxrender bathroom_stall.lxs"
	@echo "or"
	@echo "(on Mac OS X) with: open bathroom_stall.lxs"
	@echo "open INI file from there (via 'File -> Load Panel Settings...')"

# bathroom_van

bathroom_van.lxs: bathroom_van.patch
	patch bathroom.lxs -i bathroom_van.patch -o bathroom_van.lxs
	@echo "render (on Linux) with: luxrender bathroom_van.lxs"
	@echo "or"
	@echo "(on Mac OS X) with: open bathroom_van.lxs"
	@echo "open INI file from there (via 'File -> Load Panel Settings...')"
