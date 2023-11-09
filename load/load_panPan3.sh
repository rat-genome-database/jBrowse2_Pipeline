#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading panPan3 (Bonobo) **********"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="panPan3";
ROOTDIR="/data/data/jbrowse2/gff3/Bonobo/panPan3"

../makeFasta.sh $ASSEMBLY "panPan3 (Bonobo)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


