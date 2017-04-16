main.pdf graph1.pdf graph2.pdf: main.tex results.tex body.tex tables.tex biblio.bib graph1.gnu graph2.gnu graph1.txt graph2.txt 
	gnuplot5 graph1.gnu
	gnuplot5 graph2.gnu
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex

.PHONY:clean
clean: 
	rm -rf *.log *.aux
