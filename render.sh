#!/bin/bash

echo "Remove previous rendered project"
rm -rf docs
echo "Removing previous slides"
rm -rf slides
echo "Rendering Quarto slides"
quarto render index.qmd --to revealjs
echo "Copying slides into a separate folder"
mkdir -p docs/slides
mv index_files index.html docs/slides
echo "Rendering Quarto website"
quarto render index.qmd --to html
echo "Move website to docs"
mv index.html index_files docs/
