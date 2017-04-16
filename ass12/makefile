main.pdf: main.tex results.tex body.tex tables.tex biblio.bib graph1.pdf graph2.pdf
	-pdflatex main.tex
	-bibtex main.aux
	-pdflatex main.tex
	-pdflatex main.tex

graph1.pdf: graph1.gnu graph1.txt
	gnuplot5 graph1.gnu
graph2.pdf: graph2.gnu graph2.txt
	gnuplot5 graph2.gnu

.PHONY:clean
clean: 
	rm -rf *.log *.aux *.out *.bbl *.blg
