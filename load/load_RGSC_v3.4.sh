#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading RGSC_v3.4******************"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load
source /etc/profile
ASSEMBLY="RGSC_v3.4";
ROOTDIR="/data/data/jbrowse2/gff3/Rat/RGSC_v3.4"

../makeFasta.sh $ASSEMBLY "RGSC_v3.4 (Rat)" 

cd /home/rgdpub/jbrowse2/load

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
