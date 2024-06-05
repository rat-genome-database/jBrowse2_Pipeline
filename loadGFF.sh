#!/bin/bash

source /etc/profile

#1 [directory path] 2 [assembly name] 3 [category]

echo ""
echo "********  loadGFF3.sh  $1 $2  $3 ***********"
echo ""

#set -o xtrace

echo "Processing $1"

rm "$1"/*.gz.tbi 2>null
rm "$1"/*.sorted.gff 2>null
rm "$1"/*.sorted.gff.gz 2>null 

for dir in "$1"/*; do
    if [ -d "$dir" ]; then
       base=$(basename "$dir")
       echo $base;
       echo $dir;
       ../loadGFF.sh "$dir" $2 "$3,$base"    
     fi   
done

for f in "$1"/*.gff3
do 
if [ -f "$f" ]; then
  gzip -f "$f" 
fi
done

for f in "$1"/*.gff3.gz
do
echo "Loading $f"
if [ -f "$f" ]; then
   echo "found file $f"
   fSorted=$f; 
   tabix "$f"
  
   if [ $? -eq 1 ]; then
 	gunzip "$f"
	dir=$(dirname "$f")
        base=$(basename "$f" .gz)
        f1="${dir}/${base}"
        gt gff3 -sortlines -tidy -retainids "${f1}" >  "${f1}.sorted.gff"
   	bgzip "${f1}.sorted.gff" 
   	tabix "${f1}.sorted.gff.gz"
	fSorted="${f1}.sorted.gff.gz" 
        echo "sorted $fSorted" 
   fi	
   
   base=$(basename "$f" .gff3.gz)
 
  if [[ -z "$3" ]]; then
      jbrowse add-track "$fSorted" --config="{\"displays\": [ { \"type\": \"LinearBasicDisplay\", \"displayId\": \"$base-LinearBasicDisplay\", \"renderer\": { \"type\": \"SvgFeatureRenderer\", \"color1\": \"#770C0E\" } }]}"  --subDir="$2" --trackId="$base-$2" --load=copy  --name="$base" --assemblyNames="$2" --out=/data/jbrowse2/
   else 
      jbrowse add-track "$fSorted" --config="{\"displays\": [ { \"type\": \"LinearBasicDisplay\", \"displayId\": \"$base-LinearBasicDisplay\", \"renderer\": { \"type\": \"SvgFeatureRenderer\", \"color1\": \"#770C0E\" } }]}"  --subDir="$2" --trackId="$base-$2" --load=copy --name="$base" --category="$3" --assemblyNames="$2" --out=/data/jbrowse2/
   fi
fi
done


