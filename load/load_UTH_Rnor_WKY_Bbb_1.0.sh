#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading UTH_Rnor_WKY_Bbb_1.0 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="UTH_Rnor_WKY_Bbb_1.0";
ROOTDIR="/data/data/jbrowse2/gff3/Rat/UTH_Rnor_WKY_Bbb_1.0"

../makeFasta.sh $ASSEMBLY "UTH_Rnor_WKY_Bbb_1.0 (Rat)" 

cd /home/rgdpub/jbrowse2/load

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
