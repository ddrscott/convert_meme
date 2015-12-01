#!/bin/sh -ex

src=$1
dest=$2
header=$3
footer=$4

font=/Library/Fonts/Impact.ttf

width=`identify -format %w ${src}`
let caption_height=width/8
let strokewidth=width/500

convert ${src}       \
  -background none   \
  -font ${font}      \
  -fill white        \
  -stroke black      \
  -strokewidth ${strokewidth}       \
  -size ${width}x${caption_height}  \
    -gravity north caption:"${header}" -composite \
    -gravity south caption:"${footer}" -composite \
  ${dest}
