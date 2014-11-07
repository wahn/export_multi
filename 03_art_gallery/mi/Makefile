# usage:
# make clobber

clean:
	-rm -f *~ art_gallery_0*.mi

clobber: clean
	-rm -f *.exr

# art_gallery_01n

art_gallery_01n.mi: art_gallery_01n.patch
	patch art_gallery.mi -i art_gallery_01n.patch -o art_gallery_01n.mi
