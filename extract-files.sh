#!/bin/sh

function extract_file {
        from=$1
        to=$2
        if [ -e /tmp/p76h_fs/ ]; then
                echo "> extracting $from (from /tmp/p76h_fs) to $to"
                cp /tmp/p76h_fs/$from $to
        else
                echo "> extracting $from (using adb pull) to $to"
                adb pull $from $to
        fi;
}

VENDOR=teclast
DEVICE=p76h

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

mkdir -p $BASE/boot

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    extract_file $FILE "$BASE/$FILE"
    #cp /tmp/p76h_fs/$FILE $BASE/$FILE
done

#adb pull /boot/mali.ko $BASE/boot/mali.ko
#adb pull /boot/ump.ko $BASE/boot/ump.ko

extract_file "/boot/mali.ko" "$BASE/boot/mali.ko"
extract_file "/boot/ump.ko" "$BASE/boot/ump.ko"

./setup-makefiles.sh

