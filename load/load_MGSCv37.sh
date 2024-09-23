#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading Mouse 37 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="MGSCv37";
ROOTDIR="/data/data/jbrowse2/gff3/Mouse/MGSCv37"

../makeFasta.sh $ASSEMBLY "GRCm37 (Mouse)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
