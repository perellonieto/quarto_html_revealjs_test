# quarto_html_revealjs_test

Simple example to generate a website and corresponding set of slides with
Quarto

The idea is to generate the website with the command

```
quarto render index.qmd --to html
```

And the slides with the command

```
quarto render index.qmd --to revealjs
```

However, they both save all the files in the same location and one overwrites
the other.

# Current local solution

In order to generate the website and the Reveal JS slides in the folder
`slides` I run the script `render.sh` code locally.

The folder `docs` contains the intended output (which is correct locally).
