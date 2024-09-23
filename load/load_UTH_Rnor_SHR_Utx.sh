#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading UTH_Rnor_SHR_Utx ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="UTH_Rnor_SHR_Utx";
ROOTDIR="/data/data/jbrowse2/gff3/Rat/UTH_Rnor_SHR_Utx"

../makeFasta.sh $ASSEMBLY "UTH_Rnor_SHR_Utx (Rat)" 

cd /home/rgdpub/jbrowse2/load

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
