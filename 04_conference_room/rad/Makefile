# usage:
# make clobber
# make -j 5 all

all: \
conference_room_radiance_current.png \
conference_room_radiance_door1.png

RAD_FILES = radiance_only.rad conf.rad curtains.rad furniture.rad lights.rad

clean:
	-rm -f *~ *.amb *.oct *.unf *.tiff

clobber: clean
	-rm -f *.hdr *.png

conference_room_radiance_current.png: vf/current_cam.vf
	oconv $(RAD_FILES) > current.oct
	rpict -vf vf/current_cam.vf -dp 512 -ar 53 -ms 0.55 -ds .3 -dt .1 -dc .5 -dr 1 -ss 1 -st .1 -ab 2 -af current.amb -aa .15 -ad 800 -as 128 -av 1 1 1 -lr 8 -lw 1e-4 -av .02 .02 .02 -x 64 -y 64 -ps 1 current.oct > /dev/null
	rpict -vf vf/current_cam.vf -x 4000 -y 2704 -dp 512 -ar 53 -ms 0.55 -ds .3 -dt .1 -dc .5 -dr 1 -ss 1 -st .1 -af current.amb -aa .15 -ad 800 -as 128 -av 1 1 1 -lr 8 -lw 1e-4 -av .02 .02 .02 -ps 6 -pt .08 current.oct > current_cam.unf
	pfilt -r .6 -x /4 -y /4 current_cam.unf > current_cam.hdr
	ra_tiff -e -1 -g 2.2 current_cam.hdr current_cam.tiff
	imf_copy current_cam.tiff conference_room_radiance_current.png

conference_room_radiance_door1.png: vf/door1_cam.vf
	oconv $(RAD_FILES) > door1.oct
	rpict -vf vf/door1_cam.vf -dp 512 -ar 53 -ms 0.55 -ds .3 -dt .1 -dc .5 -dr 1 -ss 1 -st .1 -ab 2 -af door1.amb -aa .15 -ad 800 -as 128 -av 2 2 2 -lr 8 -lw 1e-4 -av .02 .02 .02 -x 64 -y 64 -ps 1 door1.oct > /dev/null
	rpict -vf vf/door1_cam.vf -x 4000 -y 2704 -dp 512 -ar 53 -ms 0.55 -ds .3 -dt .1 -dc .5 -dr 1 -ss 1 -st .1 -ab 2 -af door1.amb -aa .15 -ad 800 -as 128 -av 2 2 2 -lr 8 -lw 1e-4 -av .02 .02 .02 -ps 6 -pt .08 door1.oct > door1_cam.unf
	pfilt -r .6 -x /4 -y /4 door1_cam.unf > door1_cam.hdr
	ra_tiff -e -2 -g 2.2 door1_cam.hdr door1_cam.tiff
	imf_copy door1_cam.tiff conference_room_radiance_door1.png
