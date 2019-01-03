PAPER = kube-knots
#PACKAGE = acmart
BIB = kube-knots.bib
TEX = $(wildcard *.tex)
FIGS = $(wildcard figs/*.pdf figs/*.png)

.PHONY: all clean graphs

all:  ${PAPER}.pdf

$(PAPER).pdf:  $(TEX) $(BIB) $(FIGS) 
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
