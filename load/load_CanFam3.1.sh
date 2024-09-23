#!/bin/bash

source /etc/profile

ASSEMBLY="CanFam3.1";
ROOTDIR="/data/data/jbrowse2/gff3/Dog/CanFam3.1"

cd /home/rgdpub/jbrowse2/load

echo ""
echo "*****************************************************"
echo "***************** $ASSEMBLY *************************"
echo "*****************************************************"
echo ""

../makeFasta.sh $ASSEMBLY "CanFam3.1 (Domestic Dog)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"

