#!/bin/bash


m4 -I /usr/local/share/texmf/tex/latex/circuit_macros/ libcct.m4 pstricks.m4 $1.m4 | dpic -p > Fich.tex
latex TeX2PS.tex
dvips TeX2PS.dvi -E -o $1.ps
ps2pdf -dEPSCrop $1.ps $1.pdf
rm Fich.tex TeX2PS.aux TeX2PS.dvi TeX2PS.log
#epdfview $Circ.pdf

