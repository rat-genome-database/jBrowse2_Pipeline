#!/bin/bash
 
#1 [assembly 1] 2 [assembly 2] 

echo ""
echo "********  loadPaf.sh  $1 $2  ***********"
echo ""

jbrowse add-track "/data/data/jbrowse2/paf/$1 to $2 Synteny.paf" --force --subDir="synteny" --category="Synteny" --assemblyNames $1,$2 --load copy --out /data/jbrowse2/


#set -o xtrace
#export DEBUG=jbrowse*

#for f in /data/data/jbrowse2/paf/*.paf
#do
#if [ -f "$f" ]; then
#   echo $f 
#fi
#done


