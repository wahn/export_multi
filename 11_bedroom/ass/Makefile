# usage:
# make clobber
# make

all: bedroom_patched.ass

clean:
	-rm -f *~ bedroom_patched.ass

clobber: clean
	-rm -f *.exr

bedroom_patched.ass: bedroom.patch
	patch bedroom.ass -i bedroom.patch -o bedroom_patched.ass
