#!/bin/sh
pandoc --citeproc --standalone bibliography.md -t markdown_strict -o generated.md
pandoc --citeproc --standalone bibliography.md -t html --metadata title="EML4U" -o generated.html

sed -i -z 's/\n/###/g;s/,$/\n/' generated.md
#sed -i -z 's/######/\n\n/g' generated.md
sed -i -z 's/######/\n- /g' generated.md
sed -i -z 's/###/ /g' generated.md

sed -i -z 's/“/“**/g' generated.md
sed -i -z 's/”/**”/g' generated.md

# Inserts missing bullet on top of file
sed -i '1s/^/- /' generated.md