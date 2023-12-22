# quarto_html_revealjs_test

Running 

```
quarto render index.qmd
```

Generates the following folders

```
index_files
├── figure-html
├── figure-revealjs
└── libs

3 directories, 0 files
```

containing the figures for the html and the revealjs

However if we use the configuration file `_quarto.yml` then running

```
quarto render index.qmd
# or
# quarto render .
```

generates the following folders

```
_site/
├── index_files
│   └── figure-html
├── index.html
└── slides-index.html

2 directories, 2 files
```

which have the folder with the figures for the revealjs missing

