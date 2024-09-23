#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading PanPan1.1 (Bonobo) **********"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="panpan1.1";
ROOTDIR="/data/data/jbrowse2/gff3/Bonobo/panpan1.1"

../makeFasta.sh $ASSEMBLY "panpan1.1 (Bonobo)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

./indexTrack.sh "${ASSEMBLY}"
