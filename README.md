# Create Meme using ImageMagick

ImageMagick can caption stock images, but it cannot make them meme unless
you provide the right text. This tool makes no attempt to make you more
popular or snarky. It only attempt to make it easier for you to magnify your
inner self.

The scripts here are simply highlighting usage patterns of the `convert`
command which are conducive to applying captions to images.

Good luck ruling the Interwebs!
 
## Install ImageMagick
 1. `brew install imagemagick`

## Run the Shell Script
 1. `./meme.sh duck.jpg test.jpg "Top Caption" "Bottom Caption"`
 
## Run the Ruby Script
 1. `./meme.rb --src duck.jpg --dest test.jpg --north "Top" --center "Middle" --south "Bottom"`

## What's it Doing?
![readme-annotated.png](readme-annotated.png "Annotated Source")

### Source
 1. `meme.sh`
 2. `meme.rb`

## [Optional] OSX Users Might Want Setup Font Registry
 1. `mkdir $HOME/.config/ImageMagick`
 2. `cd path/to/here`
 3. `./typemap_gen.rb /Library/Fonts/*.ttf > $HOME/.config/ImageMagick/type.xml`

# Thanks
ImageMagick
:  http://www.imagemagick.org/Usage/annotating/

Wikimedia
:  https://commons.wikimedia.org/wiki/File:Cute_South_African_Duck.JPG
