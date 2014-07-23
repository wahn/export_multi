PATCHED_FILES = \
HMFA1400.rad

clean:
	-rm -f *~ *.amb *.oct

clobber: clean
	-rm -f blender.rad blender_patched.rad
	git checkout $(PATCHED_FILES)

blender: apply_patches blender_patched.rad

blender_patched.rad: blender.rad
	patch blender.rad -i blender.patch -o blender_patched.rad

blender.rad: materials.rad scene.rad lhouse.rad
	cat materials.rad scene.rad lhouse.rad > blender.rad

apply_patches: \
HMFA1400.patch
	patch HMFA1400.rad -i HMFA1400.patch
