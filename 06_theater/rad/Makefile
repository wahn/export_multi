# usage:
# make view_corner
# make view_entry
# make view_leftbalc
# make view_rightbalc
# make view_row3
# make view_stage
# make view_stair

PATCHED_FILES = \
HMFA1400.rad

GEOMETRY = \
scene.rad \
railing.rad \
grate.rad

LIGHTS = \
lhouse.rad \
lhstage.rad \
libooth.rad \
lstep.rad \
lubalcony.rad \
lubooth.rad \
lwbalcony.rad \
step_light.rad

clean:
	-rm -f *~ *.amb *.oct

clobber: clean
	-rm -f blender.rad blender_patched.rad
	git checkout $(PATCHED_FILES)

blender: apply_patches blender_patched.rad

blender_patched.rad: blender.rad
	patch blender.rad -i blender.patch -o blender_patched.rad

blender.rad: \
materials.rad \
$(GEOMETRY) \
$(LIGHTS)
	cat materials.rad $(GEOMETRY) $(LIGHTS) > blender.rad

apply_patches: \
HMFA1400.patch
	patch HMFA1400.rad -i HMFA1400.patch

scene.oct: materials.rad $(GEOMETRY) $(LIGHTS)
	git checkout $(PATCHED_FILES)
	oconv -f materials.rad $(GEOMETRY) $(LIGHTS) > scene.oct

view_corner: scene.oct vf/corner.vf
	rvu -o x11 -vf vf/corner.vf scene.oct

view_entry: scene.oct vf/entry.vf
	rvu -o x11 -vf vf/entry.vf scene.oct

view_leftbalc: scene.oct vf/leftbalc.vf
	rvu -o x11 -vf vf/leftbalc.vf scene.oct

view_rightbalc: scene.oct vf/rightbalc.vf
	rvu -o x11 -vf vf/rightbalc.vf scene.oct

view_row3: scene.oct vf/row3.vf
	rvu -o x11 -vf vf/row3.vf scene.oct

view_stage: scene.oct vf/stage.vf
	rvu -o x11 -vf vf/stage.vf scene.oct

view_stair: scene.oct vf/stair.vf
	rvu -o x11 -vf vf/stair.vf scene.oct
