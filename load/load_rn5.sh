#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading Rnor_5.0 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="rn5";
ROOTDIR="/data/data/gff3/jbrowse2/Rat/rn5"

../makeFasta.sh $ASSEMBLY "Rnor_5.0 (Rat)" fa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


