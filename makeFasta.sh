#!/bin/bash

# $1 assembly  $2 displayName $3 extension

echo ""
echo "********  Running makeFasta.sh  $1 $2  $3 ***********"
echo ""

rm -rf /ref/fasta/jbrowse/$1.*
echo "Generating FASTA file for /ref/fasta/$1.$3"
cat /ref/fasta/$1/*.$3 > /ref/fasta/jbrowse/$1.fa

echo "Loading $1.fa as $2"
samtools faidx /ref/fasta/jbrowse/$1.fa
jbrowse add-assembly /ref/fasta/jbrowse/$1.fa --displayName="$2" --load copy --type indexedFasta --out /data/jbrowse2/

