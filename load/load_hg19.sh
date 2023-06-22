#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading hg19 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="hg19";
ROOTDIR="/data/data/gff3/jbrowse2/Human/hg19"

../makeFasta.sh $ASSEMBLY "hg19 (Human)" fa

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

