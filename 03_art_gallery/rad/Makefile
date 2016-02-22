TYPE_RAD_FILES = \
lib/typeRLF1.rad \
lib/typeRLF2.rad \
lib/typeS1.rad \
lib/typeS2.rad \
lib/typeS4.rad \
lib/typeS4T.rad \
lib/typeS5.rad \
lib/typeWM1.rad

clean:
	-rm -f *~ *.amb *.oct lib/type*.dat 

clobber: clean
	-rm -f lib/type*.rad
	-rm -f -r pics
	-mkdir pics
	git checkout $(TYPE_RAD_FILES)

pics/scene2_01_cam01.png: clobber
	./lights_01.cvt
	rad scene2_01.rif
	ra_tiff pics/scene2_01_cam01.hdr pics/scene2_01_cam01.tiff
	imf_copy pics/scene2_01_cam01.tiff pics/scene2_01_cam01.png

pics/scene2_01n_cam01.png: clobber
	./lights_01n.cvt
	rad scene2_01n.rif
	ra_tiff pics/scene2_01n_cam01.hdr pics/scene2_01n_cam01.tiff
	imf_copy pics/scene2_01n_cam01.tiff pics/scene2_01n_cam01.png

pics/scene2_02_cam02.png: clobber
	./lights_01.cvt
	rad scene2_02.rif
	ra_tiff pics/scene2_02_cam02.hdr pics/scene2_02_cam02.tiff
	imf_copy pics/scene2_02_cam02.tiff pics/scene2_02_cam02.png

pics/scene2_02n_cam02.png: clobber
	./lights_01n.cvt
	rad scene2_02n.rif
	ra_tiff pics/scene2_02n_cam02.hdr pics/scene2_02n_cam02.tiff
	imf_copy pics/scene2_02n_cam02.tiff pics/scene2_02n_cam02.png

pics/scene2_03_cam03.png: clobber
	./lights_01.cvt
	rad scene2_03.rif
	ra_tiff pics/scene2_03_cam03.hdr pics/scene2_03_cam03.tiff
	imf_copy pics/scene2_03_cam03.tiff pics/scene2_03_cam03.png

pics/scene2_03n_cam03.png: clobber
	./lights_01n.cvt
	rad scene2_03n.rif
	ra_tiff pics/scene2_03n_cam03.hdr pics/scene2_03n_cam03.tiff
	imf_copy pics/scene2_03n_cam03.tiff pics/scene2_03n_cam03.png

pics/scene2_04_cam04.png: clobber
	./lights_04.cvt
	rad scene2_04.rif
	ra_tiff pics/scene2_04_cam04.hdr pics/scene2_04_cam04.tiff
	imf_copy pics/scene2_04_cam04.tiff pics/scene2_04_cam04.png

pics/scene2_05_cam05.png: clobber
	./lights_01.cvt
	rad scene2_05.rif
	ra_tiff pics/scene2_05_cam05.hdr pics/scene2_05_cam05.tiff
	imf_copy pics/scene2_05_cam05.tiff pics/scene2_05_cam05.png

pics/scene2_06_cam06.png: clobber
	./lights_06.cvt
	rad scene2_06.rif
	ra_tiff pics/scene2_06_cam06.hdr pics/scene2_06_cam06.tiff
	imf_copy pics/scene2_06_cam06.tiff pics/scene2_06_cam06.png

pics/scene2_07_cam07.png: clobber
	./lights_01.cvt
	rad scene2_07.rif
	ra_tiff pics/scene2_07_cam07.hdr pics/scene2_07_cam07.tiff
	imf_copy pics/scene2_07_cam07.tiff pics/scene2_07_cam07.png

pics/scene2_07n_cam07.png: clobber
	./lights_01n.cvt
	rad scene2_07n.rif
	ra_tiff pics/scene2_07n_cam07.hdr pics/scene2_07n_cam07.tiff
	imf_copy pics/scene2_07n_cam07.tiff pics/scene2_07n_cam07.png
