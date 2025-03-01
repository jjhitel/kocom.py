#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR
if [ ! -f $SHARE_DIR/kocom.py ]; then
	mv /kocom.py $SHARE_DIR
fi
/makeconf.sh

echo "[Info] Run Kocom Wallpad with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# for dev
while true; do echo "still live"; sleep 100; done
