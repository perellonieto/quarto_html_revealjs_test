#!/bin/bash

echo "Remove previous rendered project"
rm -rf docs
echo "Render html and revealjs"
quarto render index.qmd --to html,revealjs
echo "Move rendered content to docs"
mkdir -p docs
mv index.html slides-index.html index_files docs/
