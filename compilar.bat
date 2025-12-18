@echo off
echo ===============================================
echo Compilando el libro...
echo ===============================================

pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

echo.
echo ===============================================
echo Compilacion completada!
echo El archivo PDF es: main.pdf
echo ===============================================
pause

