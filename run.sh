#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR
if [ ! -f $SHARE_DIR/kocom_light.conf ]; then
	mv /kocom_light.conf $SHARE_DIR
fi
cp -f /kocom_light.py $SHARE_DIR/kocom_light.py

echo "[Info] Run Kocom Wallpad Light with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom_light.py

# for dev
while true; do echo "still live"; sleep 100; done
