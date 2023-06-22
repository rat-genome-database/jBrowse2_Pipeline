#!/bin/bash
echo ""
echo "*****************************************************"
echo "***************** Loading Mouse 38 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="mm38";
ROOTDIR="/data/data/gff3/jbrowse2/Mouse/mm38"

../makeFasta.sh $ASSEMBLY "GRCm38 (Mouse)" fna

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done


