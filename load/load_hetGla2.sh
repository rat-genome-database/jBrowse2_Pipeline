#!/bin/bash

source /etc/profile

echo ""
echo "*****************************************************"
echo "***************** Loading hetGla2 (Bonobo) **********"
echo "*****************************************************"
echo ""

cd /home/rgdpub/jbrowse2/load

ASSEMBLY="hetGla2";
ROOTDIR="/data/data/jbrowse2/gff3/Naked Mole-Rat/hetGla2"

../makeFasta.sh $ASSEMBLY "hetGla2 (Naked Mole-Rat)" 

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

