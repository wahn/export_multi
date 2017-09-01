# usage:
# make clobber
# make all

clean:
	-rm -f *~ *.amb *.oct *.sh *.tiff *.hdr

clobber: clean
	-rm -f *.png

all: cornell_box

# rad -o x11 cornell_box.rif
cornell_box:
	rad -n cornell_box.rif > cornell_box.sh
	sh cornell_box.sh
	ra_tiff cornell_box_1.hdr cornell_box.tiff
	imf_copy cornell_box.tiff cornell_box.png

# rad -o x11 -N 8 cornell_box.rif
# wait for result (creates cornell_box.amb and cornell_box.oct)
# then run 'make all'
