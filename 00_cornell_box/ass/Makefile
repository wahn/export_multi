ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick
NOICE = $(ARNOLD)/bin/noice

EXR = \
arnold.exr \
noice.exr \
arnold_aov_emission.exr \
arnold_aov_diffuse_direct.exr \
arnold_aov_diffuse_indirect.exr \
arnold_aov_specular_direct.exr \
arnold_aov_specular_indirect.exr \
arnold_aov_transmission_direct.exr \
arnold_aov_transmission_indirect.exr

all: render

clean:
	-rm -f *~
	-rm -rf backup

clobber: clean
	-rm -f $(EXR) 
	-rm -f cornell_box_denoise.ass

render: cornell_box.ass
	$(KICK) -dp -dw -i cornell_box.ass -v 6 \
-set MALight_light.intensity 1 \
-set MALight_light.samples 3 \
-set options.GI_diffuse_samples 6

cornell_box_denoise.ass: cornell_box_denoise.patch
	patch -i cornell_box_denoise.patch -o cornell_box_denoise.ass

denoise: cornell_box_denoise.ass
	$(KICK) -dp -dw -i cornell_box_denoise.ass -v 6 \
-set MALight_light.intensity 1 \
-set MALight_light.samples 3 \
-set options.GI_diffuse_samples 1
	$(NOICE) -i arnold.exr -o noice.exr

backup-dir:
	mkdir -p backup

backup: backup-dir $(EXR)
	cp $(EXR) backup
