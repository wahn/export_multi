# usage:
# make clobber
# make -j 5 all

OBJECTS = bathroom.rad lib/sinkfauc.rad lib/sinkspig.rad lib/bathfauc.rad \
lib/toilet.rad lib/flushand.rad lib/medcab.rad lib/vanity.rad lib/basin.cal \
lib/sinkspig.rad lib/vanfixt.rad lib/lamp_holder.rad lib/door.rad \
lib/towel_rack.rad lib/towel_rack_bracket.rad

all: \
pics/bathroom_radiance_mir.png \
pics/bathroom_radiance_shwin.png \
pics/bathroom_radiance_sink.png \
pics/bathroom_radiance_stall.png \
pics/bathroom_radiance_van.png

clean:
	-rm -f *~ lib/*~ *.amb *.oct *.sh *.tiff *.hdr

clobber: clean
	-rm -f *.png

blender: apply_patches

apply_patches: \
bathroom.patch
	patch bathroom.rad -i bathroom.patch

pics/bathroom_radiance_mir.png: clobber
	rad mir.rif
	ra_tiff pics/mir_cam.hdr pics/bathroom_radiance_mir.tiff
	imf_copy pics/bathroom_radiance_mir.tiff pics/bathroom_radiance_mir.png

pics/bathroom_radiance_shwin.png: clobber
	rad shwin.rif
	ra_tiff pics/shwin_cam.hdr pics/bathroom_radiance_shwin.tiff
	imf_copy pics/bathroom_radiance_shwin.tiff pics/bathroom_radiance_shwin.png

pics/bathroom_radiance_sink.png: clobber
	rad sink.rif
	ra_tiff pics/sink_cam.hdr pics/bathroom_radiance_sink.tiff
	imf_copy pics/bathroom_radiance_sink.tiff pics/bathroom_radiance_sink.png

pics/bathroom_radiance_stall.png: clobber
	rad stall.rif
	ra_tiff pics/stall_cam.hdr pics/bathroom_radiance_stall.tiff
	imf_copy pics/bathroom_radiance_stall.tiff pics/bathroom_radiance_stall.png

pics/bathroom_radiance_van.png: clobber
	rad van.rif
	ra_tiff pics/van_cam.hdr pics/bathroom_radiance_van.tiff
	imf_copy pics/bathroom_radiance_van.tiff pics/bathroom_radiance_van.png
