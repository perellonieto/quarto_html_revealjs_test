# quarto_html_revealjs_test

This example includes two `_quarto.yml` configuration files with the only
difference being for case1 `output-dir: .` and for case2 `output-dir: _site`.

The only quarto markdown file to render is `index.qmd` which specifies two
output formats: html and revealjs.


The Makefiles simplifies the task of rendering both examples. 

## Case 1

When rendering the case1 `output-dir: .` results in the correct generation of
two folders for the figures of the html and the revealjs versions inside of
`index_files`. The resulting `index.html` and `slides-index.html` are rendered
correctly.

```
Quarto version 1.3.450
output-dir: .
.
├── index_files
│   ├── figure-html
│   └── figure-revealjs
├── index.html
├── index.qmd
├── Makefile
├── _quarto.yml.case1
├── _quarto.yml.case2
├── README.md
├── requirements.txt
├── search.json
├── site_libs
│   ├── bootstrap
│   ├── clipboard
│   ├── quarto-html
│   ├── quarto-nav
│   ├── quarto-search
│   └── revealjs
└── slides-index.html

10 directories, 9 files
```

## Case 2

When rendering the case2 `output-dir: _site` the `figure-revealjs` folder is
missing. The resulting `slides-index.html` is not shown properly.

```
Quarto version 1.3.450
output-dir: _site
.
├── index.qmd
├── Makefile
├── _quarto.yml.case1
├── _quarto.yml.case2
├── README.md
├── requirements.txt
└── _site
    ├── index_files
    │   └── figure-html
    ├── index.html
    ├── search.json
    ├── site_libs
    │   ├── bootstrap
    │   ├── clipboard
    │   ├── quarto-html
    │   ├── quarto-nav
    │   ├── quarto-search
    │   └── revealjs
    └── slides-index.html

10 directories, 9 files
```

## GitHub quarto-dev/quarto-actions/publish

The Quarto GitHub action publish works as expected, generating all the folders
and files in the `gh-pages` branch.


