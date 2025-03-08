<h1 align="center">LaTeX Master Thesis Template <a href="https://twitter.com/intent/tweet?text=LaTeX%20Master%20Thesis%20Template.%0D%0ALaTeX%20template%20for%20writing%20your%20superb%20thesis%2e%0D%0A&hashtags=TeXLaTeX"><img src="https://img.shields.io/badge/Tweet--lightgrey?logo=twitter&style=social" alt="Tweet" height="20"/></a></h1>

## :information_source: Introduction

The goal of this template is to provide a nice-looking master thesis dissertation layout, easy to configure and fill in.

> Check [this link](https://dial.uclouvain.be/memoire/ucl/fr/object/thesis:8128) to see an example of what it looks like.

Here is an example preview for the header page, table of content, and other main document items:

<p align="center"><img src="https://raw.githubusercontent.com/academic-templates/tex-master-thesis-template/main/doc/preview-main.png"><br>
<sub><sup>Preview image generated with <a href="https://gist.github.com/dhondta/f57dfde304905644ca5c43e48c249125">this tool</a></sup></sub></p>

Here is an example preview for chapter items, including the chapter heading, summary and discussion pages:

<p align="center"><img src="https://raw.githubusercontent.com/academic-templates/tex-master-thesis-template/main/doc/preview-chapter.png"><br>
<sub><sup>Preview image generated with <a href="https://gist.github.com/dhondta/f57dfde304905644ca5c43e48c249125">this tool</a></sup></sub></p>

Here is an example preview for appendix items, including the appendix heading with a mini table of content:

<p align="center"><img src="https://raw.githubusercontent.com/academic-templates/tex-master-thesis-template/main/doc/preview-appendix.png"><br>
<sub><sup>Preview image generated with <a href="https://gist.github.com/dhondta/f57dfde304905644ca5c43e48c249125">this tool</a></sup></sub></p>


## :card_file_box: Structure

The template is structured in the following way:

- `main.tex`: This is the main TeX file to be compiled. Here you can include chapters, parts and appendices and also configure some settings (e.g. printable version).
- `cover.tex`: This is the cover page with the administrative details of the work. This is to be compiled separately **before** `main.tex` which includes the generated PDF of the cover page.
- `appendices`: This folder contains the appendices, one TeX file for each of them, to be included in `main.tex`.
- `chapters`: This folder contains the chapters, one TeX file for each of them, to be included in `main.tex`.
- `figures`: This folder is aimed to contain the figures (that is, the pictures to be captioned that are included in the list of figures).
- `icons`: This folder is aimed to contain icons that are used without captions, e.g. these included with special text boxes (like `tip`).
- `logos`: This folder is aimed to contain logos from the university, e.g. for use in a dedicated style for the cover page.
- `parts`: This folder contains every part other than chapters or appendices (i.e. abstract, foreword, references, acronyms, ...), one TeX file for each of them, to be included in `main.tex`.
- `styles`: This folder contains the available styles. Most of the included one should not be edited. Depending on the university, a TeX style could be provided, i.e. for styling the cover page ; this can be configured in `cover.tex`.

## :gear: Compilation

The compilation can easilly be configured in [Texmaker](https://en.wikipedia.org/wiki/Texmaker) by defining a *Quick Build Command*:

1. Go to the menu *Options*
2. Select *Configure Texmaker*
3. Go to tab *Quick Build*
4. In the field *User : (...)*, replace the command with:

        pdflatex -synctex=1 -interaction=nonstopmode %.tex|bibtex %.aux|makeindex %.idx|makeglossaries %|pdflatex -synctex=1 -interaction=nonstopmode %.tex|pdflatex -synctex=1 -interaction=nonstopmode %.tex

5. Then click *OK*

When editing the dissertation with [Texmaker](https://en.wikipedia.org/wiki/Texmaker):

1. Open `main.tex`
2. Go to the menu *Options*
3. Select *Define Current Document as "Master Document"*
4. Open any other file than `main.tex` for edition
5. Click on *Quick Build* to compile

This will produce `main.pdf` with all the included chapters, parts and appendices, just like if the focus was on `main.tex`.

## :mortar_board: Making your dissertation

### Adapting the cover pages

You should start this by making your cover pages. Do not forget to compile it *before* compiling `main.tex` as this will include `cover.pdf` (and not the `.tex` file !). As it can be seen in `main.tex`, **two** pages are included from `cover.pdf` ; the heading and trailing pages.

> The reason for this is that the cover page can have a dedicated style configured through the `\documentclass{}` command (e.g. if the university imposes its style for the sake of uniformity). If, in your case, the cover page has no particular style, the related inclusion line in `main.tex` can be modified to include the adapted `cover.tex`.

You can then start making the dissertation.

### Tuning parts

This template includes multiple pre-filled (self-explanatory) part files of the dissertation, whose some are to be adapted and others should not be modified.

Parts that you should adapt:

- `parts/abstract.tex`
- `parts/acknowledgements.tex`
- `parts/acronyms.tex`
- `parts/bibliography.bib`
- `parts/foreword.tex`
- `parts/glossary.tex`

Parts that you should not adapt:

- `parts/index.tex`
- `parts/references.tex`

### Adding chapters

This template has a particular layout for chapters. Each of them starts with a chapter cover page with:

- Above: the chapter title.
- On the left column: an upper and a lower paragraph.
- On the right column: the mini table of content for the chapter.

In LaTeX, this is structured like the following:

```latex
\begin{chaptercover}%
{Chapter title}%
{Left column upper paragraph}%
{Left column lower paragraph}%
{chapter-reference}

Your chapter content.

\end{chaptercover}
```

Once you have written your new chapter in `chapters/my-chapter.tex`, do not forget to include it in `main.tex` (insert a line `\include{chapters/my-chapter}` where relevant).

### Adding appendices

This template also features a particular layout for appendices. As matters separated from the main thread, they do not have cover pages but a mini table of content as well.

In LaTeX, this is structured like the following:

```latex
\begin{appchaptercover}%
{Appendix title}%
{app:appendix-reference}

Your appendix content.

\end{appchaptercover}
```

An appendix can also include an external PDF (i.e. when you don't want to reformat in your dissertation a previous document you made):

```latex
\includeappchaptercover{Appendix title}%
{app:appendix-reference}%
{appendices/some.pdf}%
{.8}% scale of 1st page
{.9}% scale of other pages
{-80}% vertical offset of 1st page
{-25}% vertical offset of other pages
{PDF Title (optional)}
```


## :star: Related Projects

You may also like these:

- [TeX Book Template](https://github.com/academic-templates/tex-book-template): A template for writing a nice book with LaTeX.
- [TeX Cheat Sheet Template](https://github.com/academic-templates/tex-cheat-sheet-template): A template for creating a nice cheat sheet with LaTeX.
- [TeX Course Index Template](https://github.com/academic-templates/tex-course-index-template): A template for writing a condensed course index leveraging LaTeX indexing.
- [TeX Poster Template](https://github.com/academic-templates/tex-poster-template): A template for creating a nice scientific poster with LaTeX.
- [TeX Slideshow Template](https://github.com/academic-templates/tex-slideshow-template): A template for making a nice presentation with LaTeX.


## :clap:  Supporters

[![Stargazers repo roster for @academic-templates/tex-master-thesis-template](https://reporoster.com/stars/dark/academic-templates/tex-master-thesis-template)](https://github.com/academic-templates/tex-master-thesis-template/stargazers)

[![Forkers repo roster for @academic-templates/tex-master-thesis-template](https://reporoster.com/forks/dark/academic-templates/tex-master-thesis-template)](https://github.com/academic-templates/tex-master-thesis-template/network/members)

<p align="center"><a href="#"><img src="https://img.shields.io/badge/Back%20to%20top--lightgrey?style=social" alt="Back to top" height="20"/></a></p>

