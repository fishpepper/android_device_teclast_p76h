android_device_teclast_p76h
===========================

teclast P76H cyanogenmod port

status: NOT 100% WORKING YET, recovery boots fine with:

setenv bootargs 'init=/init console=ttyS0,115200n8 debug'
mmc init;mmcinfo;fatload mmc 0:1 82000000 recovery.img;bootm 82000000;

with default settings it does not show anything on screen!

cm itself boots up but does not show gui?!a



HOWTO BUILD:
1) default cm10-1 setup
2) curl https://raw.github.com/fishpepper/cm_device_teclast_p76h/manifests/local_manifest.xml > ~/android/system/.repo/local_manifests/teclast_p76h.xml


