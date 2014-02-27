android_device_teclast_p76h
===========================

unoffical cyanogenmod 10.0 port for Teclast P76h tablet

USE AT YOUR OWN RISK! MAKE A BACKUP OF YOUR DEVICE FIRST!

I am still looking for a whole dump of /system of a working device.
Unfortuantely i bricked my /system partition before dumping all data,
i only have /system/lib as a backup... If you have a dump please contact me!

WORKING:
- recovery 
 gui only when initialised from serial console via: 
     setenv bootargs 'init=/init console=ttyS0,115200n8 debug'; mmc init;mmcinfo;fatload mmc 0:1 82000000 recovery.img;bootm 82000000;
- android ui when started via:
     setenv bootargs 'init=/init console=ttyS0,115200n8 debug  hdmitx=vdacoff,powermode1,unplug_powerdown a9_clk_max=1200000000'; run bootcmd

BUGS:
- when not started manually the lcd is not always working (???)

TIPS:
- there is a serial console inside, next to the flash chip labeled RX,TX,GND (use a 3.3V ftdi cable with 1k in series to adept to 3.0V I/Os)


==================================================================0

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



* USEFUL websites:

- 8188eu wifi driver:
  see http://openlinux.amlogic.com/@api/deki/files/39/=How_to_tune_the_USB_wifi.pdf

- general android porting walkthrough (recommended read!)
  see http://www.slideshare.net/gxben/android-device-porting-walkthrough
