#!/usr/bin/bash

inkscape ./favicon.svg --export-width=512 --export-filename="./favicon_512.png"
inkscape ./favicon.svg --export-width=192 --export-filename="./favicon_192.png"
inkscape ./favicon.svg --export-width=140 --export-filename="./favicon_140.png"
inkscape ./favicon.svg --export-width=32  --export-filename="./favicon_32.png"
inkscape ./favicon.svg --export-width=16  --export-filename="./favicon_16.png"
convert favicon_32.png favicon_16.png ./favicon.ico
convert favicon_140.png -gravity center -background white -extent '180x180' apple-touch-icon.png
#rm -f favicon_*.png
