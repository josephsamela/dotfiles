#!/bin/sh

echo ""
echo "RECORDING FROM:  `arecord -l | grep "(*)"` "
FILENAME=`date '+%Y.%m.%d_%H.%M.%S.wav'`
FILEPATH=`pwd`
echo "RECORDING TO  :  $FILEPATH/$FILENAME"
echo "Press \"q\" to stop recording"
echo ""

{
ffmpeg -hide_banner  -f alsa -i hw:1,1 -af acompressor=threshold=-21dB:ratio=9:attack=200:release=1000 $FILENAME
} &> /dev/null
