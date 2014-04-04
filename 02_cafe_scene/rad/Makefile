# usage:
# make clobber
# make all -j 2

clean:
	-rm -f *~ *.amb *.oct *.sh *.tiff *.hdr

clobber: clean
	-rm -f *.png

all: lights1 lights2

x11: lights1_x11 lights2_x11

lights1_x11:
	rad -o x11 lights1_x11.rif

lights2_x11:
	rad -o x11 lights2_x11.rif

lights1: clean
	rad -n lights1.rif > lights1.sh
	sh lights1.sh
	ra_tiff lights1_Camera.hdr lights1.tiff
	imf_copy lights1.tiff lights1.png

lights2: clean
	rad -n lights2.rif > lights2.sh
	sh lights2.sh
	ra_tiff lights2_Camera.hdr lights2.tiff
	imf_copy lights2.tiff lights2.png
