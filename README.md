android_device_teclast_p76h
===========================

teclast P76H cyanogenmod port

status: NOT 100% WORKING YET, recovery boots fine with:


TIPS:
- there is a serial console inside, next to the flash chip labeled RX,TX,GND (use a 3.3V ftdi cable with 1k in series to adept to 3.0V I/Os)


setenv bootargs 'init=/init console=ttyS0,115200n8 debug'
mmc init;mmcinfo;fatload mmc 0:1 82000000 recovery.img;bootm 82000000;

with default settings it does not show anything on screen!

cm itself boots up but does not show gui?!a



HOWTO BUILD:
1) default cm10.0 setup:

cd ~/android/system/
repo init -u git://github.com/CyanogenMod/android.git -b jellybean
mkdir .repo/local_manifests
echo -ne "<?xml version="1.0" encoding="UTF-8"?>\n<manifest>\n<project path="device/teclast/p76h" name="fishpepper/android_device_teclast_p76h" remote="github" revision="master"/>\n</manifest>\n" > .repo/local_manifests/p76h.xml

source build/envsetup.sh
croot
cd vendor/cm
./get_prebuilts
croot
[[copy p76h filesystem to /tmp/p76h_fs or connect to device using adb in order to DL binary blobs]]
cd device/teclast/p76h/
bash extract-files.sh 
croot
brunch p76h

copy recovery.img to sd card
-> reboot with POWER + VOL + pressed (long time, 10s?)
-> upload zip with adb sideload


