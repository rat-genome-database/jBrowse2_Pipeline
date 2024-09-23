#!/bin/bash

if [ "$INDEX_JBROWSE" -eq 1 ]; then
    echo "running indexing"
    export NODE_OPTIONS='--max-old-space-size=4096'
    jbrowse text-index  --assemblies=${1} --out /data/jbrowse2/ 2>&1 | tee /data/jbrowse_log/textIndex${1}.log
fi

