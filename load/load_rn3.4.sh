#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading RGSC_v3.4******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="rn3.4";
ROOTDIR="/data/data/gff3/jbrowse2/Rat/rn3_4"

../makeFasta.sh $ASSEMBLY "RGSC_v3.4 (Rat)" fa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


