#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading GRCh37.p13 ******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="GRCh37.p13";
ROOTDIR="/data/data/jbrowse2/gff3/Human/GRCh37.p13"

../makeFasta.sh $ASSEMBLY "GRCh37.p13 (Human)"

for dir in "$ROOTDIR"/*; do
  if [ -d "$dir" ]; then
    base=$(basename "$dir")
    echo "calling loadGFF.sh $dir $ASSEMBLY $base"
    ../loadGFF.sh "$dir" $ASSEMBLY "$base"
  fi
done

echo "running indexing"
export NODE_OPTIONS='--max-old-space-size=4096'
jbrowse text-index  --assemblies=${ASSEMBLY} --out /data/jbrowse2/ 2>&1 | tee /data/jbrowse_log/textIndex${ASSEMBLY}.log
