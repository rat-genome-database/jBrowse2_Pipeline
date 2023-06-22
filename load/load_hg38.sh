#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading hg 38 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="hg38";
ROOTDIR="/data/data/gff3/jbrowse2/Human/hg38"

../makeFasta.sh $ASSEMBLY "hg38 (Human)" fna

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

