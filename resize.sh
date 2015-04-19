#!/bin/bash
dir="$1"
size="$2"

cd $dir

find $dir/* -type f | while read f
do
	mogrify -verbose -geometry $size "$f"
done
