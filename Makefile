all: report.pdf

report.pdf : report.tex
	pdflatex $<
	bibtex report
	pdflatex $<
	pdflatex $<

slides.pdf : slides.tex
	pdflatex $<
	pdflatex $<

clean: 
	for i in vrb out nav snm bak toc aux pdf ps log lof bbl blg dvi;do rm -f *.$$i;done

.PHONY: clean all
