#!/bin/bash

source /etc/profile

#1 [directory path] 2 [assembly name] 3 [category]

echo ""
echo "********  loadBed.sh  $1 $2  $3 ***********"
echo ""

#set -o xtrace
#export DEBUG=jbrowse*

echo "Processing $1"

rm "$1"/*.gz.tbi 2>null 
rm "$1"/*.sorted.bed 2>null
rm "$1"/*.sorted.bed.gz 2>null

for dir in "$1"/*; do
    if [ -d "$dir" ]; then
       base=$(basename "$dir")
       echo $base;
       echo $dir;
       ../loadBed.sh "$dir" $2 "$3,$base"    
     fi   
done

for f in "$1"/*.narrowPeak
do
if [ -f "$f" ]; then
  mv "$f" "$f.bed"
fi
done

for f in "$1"/*.bed
do 
if [ -f "$f" ]; then
#   sed -i 's/chr/Chr/g' $f
   bgzip -c "$f" > "$f.gz" 
fi
done

for f in "$1"/*.bed.gz
do
echo "Loading $f"
if [ -f "$f" ]; then
   echo "found file $f"
   fSorted=$f; 
   /usr/bin/tabix "$f"
  
   if [ $? -eq 1 ]; then
 	#gunzip "$f"
	dir=$(dirname "$f")
        base=$(basename "$f" .gz)
        f1="${dir}/${base}"
        #gt gff3 -sortlines -tidy -retainids "${f1}" >  "${f1}.sorted.bed"
   	sort -k1,1 -k2,2n -k3,3n "$f1" > "${f1}.sorted.bed" 
        bgzip "${f1}.sorted.bed" 
   	tabix "${f1}.sorted.bed.gz"
	fSorted="${f1}.sorted.bed.gz" 
       echo "sorted $fSorted" 
   fi	
   
   base=$(basename "$f" .bed.gz)

   if [[ -z "$3" ]]; then
      /usr/local/bin/jbrowse add-track "$fSorted" --subDir="$2" --trackId="$base-$2" --load=copy  --name="$base" --assemblyNames="$2" --out=/data/jbrowse2/
   else 
      /usr/local/bin/jbrowse add-track "$fSorted" --subDir="$2" --trackId="$base-$2" --load=copy --name="$base" --category="$3" --assemblyNames="$2" --out=/data/jbrowse2/
   fi
fi
done


