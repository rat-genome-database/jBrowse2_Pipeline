#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading Mhudiblu_PPA_v0 (Bonobo) **********"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="Mhudiblu_PPA_v0";
ROOTDIR="/data/data/jbrowse2/gff3/Bonobo/Mhudiblu_PPA_v0"

../makeFasta.sh $ASSEMBLY "Mhudiblu_PPA_v0 (Bonobo)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
