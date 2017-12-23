#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Use: $0 maxBytes";
	exit 1;
fi


if ! [ -f /usr/bin/convert ]; then 
	echo "ImageMagick is required, please install it!";
	exit 1;
fi

mkdir -p ../small;

for file in *; do

	i=99;	

	convert $file -quality $i ../tmp.jpg;

	while [ $((`stat --printf="%s" ../tmp.jpg`)) -gt $(($1)) ]; do
		i=$(($i - 1));
		convert $file -quality $i ../tmp.jpg;
	done

	echo "$file resized to $i %";

	mv ../tmp.jpg ../small/$file;

done
