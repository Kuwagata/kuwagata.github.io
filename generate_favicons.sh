#!/usr/bin/bash

icon_path="./static/favicons"

svg_to_png () {
  width="${1}"
  inkscape --export-type="png" \
           --export-width="${width}" \
           --export-filename="${icon_path}/favicon-${width}" \
           "${icon_path}/favicon.svg"
}

for width in 512 192 140 32 16; do
  svg_to_png "${width}"
done

convert "${icon_path}/favicon-32.png" \
        "${icon_path}/favicon-16.png" \
        "${icon_path}/favicon.ico"
rm -f "${icon_path}/favicon-16.png" "${icon_path}/favicon-32.png"

convert "${icon_path}/favicon-140.png" \
        -gravity center -background white -extent "180x180" \
        "${icon_path}/apple-touch-icon.png"
rm -f "${icon_path}/favicon-140.png"
