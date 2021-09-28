#!/bin/bash

xsltproc createLatexDefinitionTable.xsl khermisc_symbolList.xml > LatexDefinitionTable.tex
pdflatex -synctex=1 LatexDefinitionTable.tex && pdflatex -synctex=1 LatexDefinitionTable.tex

#xsltproc createLatexDefinitionTableBook.xsl symbolList.xml > LatexDefinitionTableBook.tex
#pdflatex -synctex=1 LatexDefinitionTableBook.tex && pdflatex -synctex=1 LatexDefinitionTableBook.tex

#xsltproc createLatexDefinitionTableBookInclude.xsl symbolList.xml > LatexDefinitionTableBookInclude.tex

