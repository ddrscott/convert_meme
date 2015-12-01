# How to create Meme using ImageMagick

## Install ImageMagick
 1. `brew install imagemagick`

## Run the Shell Script
 1. `./meme.sh duck.jpg test.jpg "Top Caption" "Bottom Caption"`
 
## Run the Ruby Script
 1. `./meme.rb --src duck.jpg --dest test.jpg --north "Top" --center "Middle" --south "Bottom"`

## Learn What it's Doing
 1. `vim meme.sh`
 2. `vim meme.rb`

## [Optional] OSX Users Might Want Setup Font Registry
 1. `mkdir $HOME/.config/ImageMagick`
 2. `cd path/to/here`
 3. `./typemap_gen.rb /Library/Fonts/*.ttf > $HOME/.config/ImageMagick/type.xml`


# Thanks to
Wikimedia
:  https://commons.wikimedia.org/wiki/File:Cute_South_African_Duck.JPG

ImageMagick
:  http://www.imagemagick.org/Usage/annotating/