#!/bin/bash

source /etc/profile

echo ""
echo "********  loadOrthology.sh  ***********"
echo ""

# Define the directory containing the JSON files
directory="/data/data/jbrowse2/orthology"

# Loop over all JSON files in the directory
for file in "$directory"/*.json
do
    # Check if the file exists
    if [ -f "$file" ]; then
        echo "Processing $file"
        
        filename="${file##*/}"
        #file_name="${basefilename%.json}"

        echo $filename	

        filename=$(echo ${filename} | sed 's/\.json$//')

	# Split the string on the dash and print each part
	part1=$(echo $filename | cut -d '-' -f 1)
	part2=$(echo $filename | cut -d '-' -f 2)
       
	echo "Part 1: $part1"
	echo "Part 2: $part2"

        cp "/data/data/jbrowse2/orthology/${part1}.bed" "/data/jbrowse2/${part1}/"
        cp "/data/data/jbrowse2/orthology/${part2}.bed" "/data/jbrowse2/${part1}/"
        cp "/data/data/jbrowse2/orthology/${part1}-${part2}.anchors" "/data/jbrowse2/${part1}/"

        jbrowse add-track-json "/data/data/jbrowse2/orthology/${part1}-${part2}.json" --out /data/jbrowse2/
# Add your processing commands here
    else
        echo "No JSON files found in $directory"
    fi
done

