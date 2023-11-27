#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading panPan2 (Bonobo) **********"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="panPan2";
ROOTDIR="/data/data/jbrowse2/gff3/Bonobo/panPan2"

../makeFasta.sh $ASSEMBLY "panPan2 (Bonobo)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


