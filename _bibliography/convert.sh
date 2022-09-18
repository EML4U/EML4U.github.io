#!/bin/sh
pandoc --citeproc --standalone bibliography.md -t markdown_strict -o generated.md
pandoc --citeproc --standalone bibliography.md -t html -o generated.html
