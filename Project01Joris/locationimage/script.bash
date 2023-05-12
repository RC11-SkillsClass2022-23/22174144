#!/bin/bash
for i in {1..27}
do
    if [ -f "IMAG$i.jpg" ]; 
        then
        magick IMAG$i.jpg -format "%[exif:GPSLatitude]" info: >> data.txt
        echo \ >> data.txt
        magick IMAG$i.jpg -format "%[exif:GPSLongitude]" info: >> data.txt
        echo \ >> data.txt
    fi
done