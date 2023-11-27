#!/bin/bash

source /etc/profile

# $1 assembly  $2 displayName 

#set -o xtrace
#export DEBUG=jbrowse*

ALIASES="--refNameAliases=aliases/aliases_${1}.txt"

cd /home/rgdpub/jbrowse2

echo ""
echo "********  Running makeFasta.sh  $1 $2 ***********"
echo ""

echo "Loading $1.fa as $2"
/usr/bin/samtools faidx /data/data/jbrowse2/fasta/$1.fa
cd /data/jbrowse2
jbrowse add-assembly /data/data/jbrowse2/fasta/$1.fa \
    $ALIASES \
  --displayName="$2" \
  --load copy -n $1 \
  --type indexedFasta \
  --out /data/jbrowse2/

