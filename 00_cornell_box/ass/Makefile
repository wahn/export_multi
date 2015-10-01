ARNOLD = /usr/local/Arnold
KICK = $(ARNOLD)/bin/kick

EXR = \
arnold.exr \
arnold_aov_direct_diffuse.exr \
arnold_aov_direct_specular.exr \
arnold_aov_reflection.exr \
arnold_aov_refraction.exr \
arnold_aov_indirect_diffuse.exr \
arnold_aov_indirect_specular.exr

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
