ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

EXR = \
arnold.exr \
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

render: cornell_box.ass
	$(KICK) -dp -dw -i cornell_box.ass -v 6 \
-set MALight_light.intensity 1 \
-set MALight_light.samples 3 \
-set options.GI_diffuse_samples 6

backup-dir:
	mkdir -p backup

backup: backup-dir $(EXR)
	cp $(EXR) backup
