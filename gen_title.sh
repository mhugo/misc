#!/bin/bash
# Generate a title video from a still image
# with fade in and out
image=$1
out=$2
mkdir title
nfade=8
for i in $(seq 0 $(($nfade-1))); do
    a=$(printf "%04d" $i)
    p=$(( $i*100/$nfade ))
    convert $image -modulate $p  -colorspace ycbcr title/$a.png
    echo $a
done
for j in $(seq 1 15); do
    a=$(printf "%04d" $(($i+$j)))
    convert $image -colorspace ycbcr title/$a.png
    echo $a
done
for k in $(seq 0 $(($nfade-1))); do
    a=$(printf "%04d" $(($i+$j+$k)))
    p=$(( ($nfade-$k)*100/$nfade ))
    convert $image -modulate $p  -colorspace ycbcr title/$a.png
    echo $a
done
ffmpeg -i title/%04d.png -r 15 $out
rm -rf title

