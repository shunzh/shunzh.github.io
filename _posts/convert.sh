#!/bin/bash
pandoc -s -t markdown_strict+yaml_metadata_block --filter=pandoc-citeproc $1 -o $2-$1
