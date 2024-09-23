#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading hg 38 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="GRCh38.p14";
ROOTDIR="/data/data/jbrowse2/gff3/Human/GRCh38.p14"

../makeFasta.sh $ASSEMBLY "GRCh38 (Human)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
