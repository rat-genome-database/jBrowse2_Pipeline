#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading chlSab2 (Green Monkey)*****"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="chlSab2";
ROOTDIR="/data/data/jbrowse2/gff3/Green Monkey/chlSab2"

../makeFasta.sh $ASSEMBLY "chlSab2 (Green Monkey/Vervet)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

