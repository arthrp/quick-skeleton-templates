#!/bin/sh

cd templates/

for dir in *
do
	tmpname="${dir##*/}.zip"
	echo ${dir##*/}
	echo $tmpname
	zip -r $tmpname $dir
	mv $tmpname ../dist
done

cd ..
