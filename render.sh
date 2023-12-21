#!/bin/bash

echo "Removing previous slides"
rm -rf slides
echo "Rendering Quarto slides"
quarto render hello.qmd --to revealjs
echo "Copying slides into a separate folder"
mkdir -p slides
mv hello_files hello.html slides
echo "Rendering Quarto website"
quarto render hello.qmd --to html
