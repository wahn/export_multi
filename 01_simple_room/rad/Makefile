# usage:
# make clobber
# make all -j 4

clean:
	-rm -f *~ *.amb *.oct *.sh *.tiff *.hdr

clobber: clean
	-rm -f *.png

all: cam1 cam2 cam3 cam4

# rad -o x11 cam1.rif
cam1:
	rad -n cam1.rif > cam1.sh
	sh cam1.sh
	ra_tiff cam1_cam1.hdr cam1.tiff
	convert cam1.tiff cam1.png

# rad -o x11 cam2.rif
cam2:
	rad -n cam2.rif > cam2.sh
	sh cam2.sh
	ra_tiff cam2_cam2.hdr cam2.tiff
	convert cam2.tiff cam2.png

# rad -o x11 cam3.rif
cam3:
	rad -n cam3.rif > cam3.sh
	sh cam3.sh
	ra_tiff cam3_cam3.hdr cam3.tiff
	convert cam3.tiff cam3.png

# rad -o x11 cam4.rif
cam4:
	rad -n cam4.rif > cam4.sh
	sh cam4.sh
	ra_tiff cam4_cam4.hdr cam4.tiff
	convert cam4.tiff cam4.png
