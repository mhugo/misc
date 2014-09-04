#!/bin/bash
# Generate a title video
# with fade in and out
title="$1"
out=$2

mkdir -p title

# create the title image
convert -background black -fill white -font FreeSans-Regular \
    -size 1280x800  -pointsize 72 -gravity center \
    label:"$title" title/image.jpg

image=title/image.jpg
nfade=8
for i in $(seq 0 $(($nfade-1))); do
    a=$(printf "%04d" $i)
    p=$(( $i*100/$nfade ))
    convert $image -modulate $p title/$a.png
    echo $a
done
for j in $(seq 1 20); do
    a=$(printf "%04d" $(($i+$j)))
    cp $image title/$a.png
    echo $a
done
for k in $(seq 0 $(($nfade-1))); do
    a=$(printf "%04d" $(($i+$j+$k)))
    p=$(( ($nfade-$k)*100/$nfade ))
    convert $image -modulate $p title/$a.png
    echo $a
done
ffmpeg -i title/%04d.png -r 15 -pix_fmt yuv420p $out
rm -rf title

