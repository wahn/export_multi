# usage:
# make clobber

ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

PATCHED_FILES = \
art_gallery_01n.ass \
art_gallery_07n.ass \
art_gallery_07.ass

all: \
art_gallery_arnold_01n.exr \
art_gallery_arnold_02n.exr \
art_gallery_arnold_03n.exr \
art_gallery_arnold_07n.exr \
art_gallery_arnold_07.exr

clean:
	-rm -f *~ art_gallery_*.ass 

clobber: clean
	-rm -f *.exr *.png *.log

patch: $(PATCHED_FILES)

# art_gallery_arnold_01n

art_gallery_01n.ass: \
art_gallery_01n.patch \
art_gallery.ass
	patch art_gallery.ass -i art_gallery_01n.patch \
-o art_gallery_01n.ass

art_gallery_arnold_01n.exr: art_gallery_01n.ass
	$(KICK) art_gallery_01n.ass -dp -dw -v 6 -log \
-logfile art_gallery_01n.log \
-o art_gallery_arnold_01n.exr


# art_gallery_arnold_01

# re-use art_gallery_07.ass (using CAcam01)
art_gallery_arnold_01.exr: art_gallery_07.ass
	$(KICK) art_gallery_07.ass -dp -dw -v 6 -log \
-logfile art_gallery_01.log -c CAcam01 \
-o art_gallery_arnold_01.exr

# art_gallery_arnold_02n

# re-use art_gallery_01n.ass (using CAcam02)
art_gallery_arnold_02n.exr: art_gallery_01n.ass
	$(KICK) art_gallery_01n.ass -dp -dw -v 6 -log \
-logfile art_gallery_02n.log -c CAcam02 \
-o art_gallery_arnold_02n.exr

# art_gallery_arnold_02

# re-use art_gallery_07.ass (using CAcam02)
art_gallery_arnold_02.exr: art_gallery_07.ass
	$(KICK) art_gallery_07.ass -dp -dw -v 6 -log \
-logfile art_gallery_02.log -c CAcam02 \
-o art_gallery_arnold_02.exr

# art_gallery_arnold_03n

# re-use art_gallery_01n.ass (using CAcam03)
art_gallery_arnold_03n.exr: art_gallery_01n.ass
	$(KICK) art_gallery_01n.ass -dp -dw -v 6 -log \
-logfile art_gallery_03n.log -c CAcam03 \
-o art_gallery_arnold_03n.exr

# art_gallery_arnold_03

# re-use art_gallery_07.ass (using CAcam03)
art_gallery_arnold_03.exr: art_gallery_07.ass
	$(KICK) art_gallery_07.ass -dp -dw -v 6 -log \
-logfile art_gallery_03.log -c CAcam03 \
-o art_gallery_arnold_03.exr

# art_gallery_arnold_05

# re-use art_gallery_07.ass (using CAcam05)
art_gallery_arnold_05.exr: art_gallery_07.ass
	$(KICK) art_gallery_07.ass -dp -dw -v 6 -log \
-logfile art_gallery_05.log -c CAcam05 \
-o art_gallery_arnold_05.exr

# TODO: art_gallery_arnold_04

# TODO: art_gallery_arnold_05

# art_gallery_arnold_06

art_gallery_06.ass: \
art_gallery_06.patch \
art_gallery.ass
	patch art_gallery.ass -i art_gallery_06.patch \
-o art_gallery_06.ass

art_gallery_arnold_06.exr: art_gallery_06.ass
	$(KICK) art_gallery_06.ass -dp -dw -v 6 -log \
-logfile art_gallery_06.log \
-o art_gallery_arnold_06.exr

# art_gallery_arnold_07n

art_gallery_07n.ass: \
art_gallery_07n.patch \
art_gallery.ass
	patch art_gallery.ass -i art_gallery_07n.patch \
-o art_gallery_07n.ass

art_gallery_arnold_07n.exr: art_gallery_07n.ass
	$(KICK) art_gallery_07n.ass -dp -dw -v 6 -log \
-logfile art_gallery_07n.log \
-o art_gallery_arnold_07n.exr

# art_gallery_arnold_07

art_gallery_07.ass: \
art_gallery_07.patch \
art_gallery.ass
	patch art_gallery.ass -i art_gallery_07.patch \
-o art_gallery_07.ass

art_gallery_arnold_07.exr: art_gallery_07.ass
	$(KICK) art_gallery_07.ass -dp -dw -v 6 -log \
-logfile art_gallery_07.log \
-o art_gallery_arnold_07.exr
