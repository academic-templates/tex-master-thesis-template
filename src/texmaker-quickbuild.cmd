pdflatex -synctex=1 -interaction=nonstopmode %.tex|bibtex %.aux|makeindex %.idx|makeglossaries %|pdflatex -synctex=1 -interaction=nonstopmode %.tex|pdflatex -synctex=1 -interaction=nonstopmode %.tex
