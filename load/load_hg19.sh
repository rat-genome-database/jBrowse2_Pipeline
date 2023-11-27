#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading hg19 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="hg19";
ROOTDIR="/data/data/jbrowse2/gff3/Human/hg19"

../makeFasta.sh $ASSEMBLY "hg19 (Human)" 

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

echo "running indexing"
jbrowse text-index  --assemblies=${ASSEMBLY} --out /data/jbrowse2/ 2>&1 | tee /data/jbrowse_log/textIndex${ASSEMBLY}.log
