#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading NCBI36  ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="NCBI36";
ROOTDIR="/data/data/jbrowse2/gff3/Human/NCBI36"

../makeFasta.sh $ASSEMBLY "NCBI36 (Human)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
