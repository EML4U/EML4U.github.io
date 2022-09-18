#!/bin/sh
pandoc --citeproc --standalone bibliography.md -t markdown_strict -o generated.md
pandoc --citeproc --standalone bibliography.md -t html -o generated.html

sed -i -z 's/\n/###/g;s/,$/\n/' generated.md
#sed -i -z 's/######/\n\n/g' generated.md
sed -i -z 's/######/\n- /g' generated.md
sed -i -z 's/###/ /g' generated.md

sed -i -z 's/“/“**/g' generated.md
sed -i -z 's/”/**”/g' generated.md


