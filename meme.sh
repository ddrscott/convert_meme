#!/bin/sh -ex

src=$1
dest=$2
header=$3
footer=$4

font=/Library/Fonts/Impact.ttf
size=1024x

convert $src       \
  -resize $size    \
  -background none \
  -font $font      \
  -pointsize 96    \
  -fill white      \
  -stroke black    \
  -strokewidth 2   \
  -size $size      \
    -gravity north caption:"$header" -composite \
    -gravity south caption:"$footer" -composite \
  $dest
