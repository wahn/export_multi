# usage:
# make clobber
# make -j 4

ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

all: \
simple_room_cam1.exr \
simple_room_cam2.exr \
simple_room_cam3.exr \
simple_room_cam4.exr

clean:
	-rm -f *~

clobber: clean
	-rm -f *.exr

simple_room_cam1.exr: simple_room.ass
	$(KICK) -dp -dw -c CAcam1 -i simple_room.ass -o simple_room_cam1.exr -v 6

simple_room_cam2.exr: simple_room.ass
	$(KICK) -dp -dw -c CAcam2 -i simple_room.ass -o simple_room_cam2.exr -v 6 \
-e -3 \
-set options.GI_diffuse_samples 2 \
-set options.GI_specular_samples 2 \
-set options.GI_transmission_samples 2 \
-set options.AA_samples 16 \
-set sun_skydome.samples 1 \
-set LAfixture.samples 3

simple_room_cam3.exr: simple_room.ass
	$(KICK) -dp -dw -c CAcam3 -i simple_room.ass -o simple_room_cam3.exr -v 6 \
-e -5 \
-set options.GI_diffuse_samples 2 \
-set options.GI_specular_samples 2 \
-set options.GI_transmission_samples 2 \
-set options.AA_samples 16 \
-set sun_skydome.samples 1 \
-set LAfixture.samples 3 \
-set LAfixture.intensity 50

simple_room_cam4.exr: simple_room.ass
	$(KICK) -dp -dw -c CAcam4 -i simple_room.ass -o simple_room_cam4.exr -v 6 \
-e -5 \
-set options.GI_diffuse_samples 2 \
-set options.GI_specular_samples 2 \
-set options.GI_transmission_samples 2 \
-set options.AA_samples 16 \
-set sun_skydome.samples 1 \
-set LAfixture.samples 3 \
-set LAfixture.intensity 50
