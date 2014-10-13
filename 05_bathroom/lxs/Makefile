# usage:
# make clobber
# make

all: \
bathroom_mir.lxs

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