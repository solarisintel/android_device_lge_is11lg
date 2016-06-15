#!/bin/sh

VENDOR=lge
DEVICE=is11lg

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

SRC=~/SU880/provision_official_4-su880/system
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp -v $SRC/$FILE $BASE/$FILE
done

SRC=~/IS11LG/ICS/system
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp -v $SRC/$FILE $BASE/$FILE
done





