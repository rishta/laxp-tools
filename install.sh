#!/bin/sh
SRC_DIR=`dirname $0`
mkdir -pv /usr/share/mkvhost

cp -rav ${SRC_DIR}/templates /usr/share/mkvhost/

echo Installing mkvhost in /usr/sbin
sed -r 's:(INSTALL_PREFIX=).*:\1/usr:' < ${SRC_DIR}/mkvhost > /usr/sbin/mkvhost

chmod -v 754 /usr/sbin/mkvhost

